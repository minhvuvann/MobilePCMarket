package com.astore.connection_pool;
import java.util.concurrent.LinkedBlockingQueue;

public class BaseConnectionPool {

	private LinkedBlockingQueue<DBConnectionCell> pool = new LinkedBlockingQueue<DBConnectionCell>();
	
	protected int numOfConnectionCreated = 0;
	
	protected String databaseName;
	protected int max_pool_size;
	protected int init_pool_size;
	protected int min_pool_size;
	protected long time_out = 10000;

	protected String url;
	protected String user;
	protected String password;

	protected Thread thread;
	protected long start_time;
	protected long end_time;
	protected static BaseConnectionPool instancePool;

	
	public BaseConnectionPool() {
	}

	//Setting for Pool
	public synchronized static BaseConnectionPool getInstace() {
		if (instancePool == null) {
			instancePool = new BaseConnectionPool();
			instancePool.setInit_pool_size(DBConnectionPoolConfig.INIT_POOL_SIZE);
			instancePool.setMax_pool_size(DBConnectionPoolConfig.MAX_POOL_SIZE);
			instancePool.setMin_pool_size(DBConnectionPoolConfig.MIN_POOL_SIZE);
			instancePool.setUrl(DBConnectionPoolConfig.URL);
			instancePool.setUser(DBConnectionPoolConfig.USERNAME);
			instancePool.setPassword(DBConnectionPoolConfig.PASSWORD);
			instancePool.setTime_out(DBConnectionPoolConfig.TIME_OUT);
			instancePool.databaseName = DBConnectionPoolConfig.DATABASE_NAME;
			instancePool.thread = new AbsThread() {

				/*
				 * When the number of connection > min connection , close TimeOut Connection
				 */
				@Override
				public void execute() {
					for (DBConnectionCell connection : instancePool.pool) {
						if (instancePool.numOfConnectionCreated > instancePool.min_pool_size) {
							if (connection.isTimeOut()) {
								try {
									connection.close();
									instancePool.pool.remove(connection);
									instancePool.numOfConnectionCreated--;
								} catch (Exception e) {
//									logger.info("Waring : Connection can not close in timeOut !");
								}
							}
						}
					}

				}
			};
		}
		return instancePool;
	}

	public void start() {
//		logger.info("Create Connection pool........................ ");
		// Load Connection to Pool
		start_time = System.currentTimeMillis();
		try {
			for (int i = 0; i < init_pool_size; i++) {
				DBConnectionCell connection = new DBConnectionCell(url, user, password, time_out);
				pool.put(connection);
				numOfConnectionCreated++;
			}
		} catch (Exception e) {
//			logger.warn(String.format(
//					"[Message : can not start connection pool] - [Connection pool : %s] - " + "[Exception : %s]",
//					this.toString(), e));
		}
		thread.start();
		end_time = System.currentTimeMillis();
//		logger.info("Start Connection pool in : " + end_time + start_time + " ms .");
	}
	public synchronized DBConnectionCell getConnection() {
		DBConnectionCell connectionWraper = null;
		if (pool.size() == 0 && numOfConnectionCreated < max_pool_size) {
			connectionWraper = new DBConnectionCell(url, user, password, time_out);
			try {
				pool.put(connectionWraper);
			} catch (InterruptedException e) {
//				logger.warn("Can not PUT Connection to Pool, Current Poll size = " + pool.size()
//						+ " , Number Connection : " + numOfConnectionCreated, e);
				e.printStackTrace();
			}
			numOfConnectionCreated++;
		}
		try {
			connectionWraper = pool.take();
		} catch (InterruptedException e) {
//			logger.warn("Can not GET Connection from Pool, Current Poll size = " + pool.size()
//					+ " , Number Connection : " + numOfConnectionCreated);
			e.printStackTrace();
		}
		connectionWraper.setRelaxTime(System.currentTimeMillis());
		return connectionWraper;
	}

	
	public void releaseConnection(DBConnectionCell conn) {
		try {
			if (conn.isClosed()) {
				pool.remove(conn);
				DBConnectionCell connection = new DBConnectionCell(url, user, password, time_out);
				pool.put(connection);
			} else {
				pool.put(conn);
			}
		} catch (Exception e) {
//			logger.info("Connection : " + conn.toString(), e);
		}
	}

	@Override
    public String toString() {
        return "ConnectionPool{" +
                "pool=" + pool +
                ", max_pool_size=" + max_pool_size +
                ", init_pool_size=" + init_pool_size +
                ", min_pool_size=" + min_pool_size +
                ", time_out=" + time_out +
                ", url='" + url + '\'' +
                ", user='" + user + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

	/**
	 * @return the pool
	 */
	public LinkedBlockingQueue<DBConnectionCell> getPool() {
		return pool;
	}

	/**
	 * @param pool the pool to set
	 */
	public void setPool(LinkedBlockingQueue<DBConnectionCell> pool) {
		this.pool = pool;
	}

	/**
	 * @return the numOfConnectionCreated
	 */
	public int getNumOfConnectionCreated() {
		return numOfConnectionCreated;
	}

	/**
	 * @param numOfConnectionCreated the numOfConnectionCreated to set
	 */
	public void setNumOfConnectionCreated(int numOfConnectionCreated) {
		this.numOfConnectionCreated = numOfConnectionCreated;
	}

	/**
	 * @return the sid
	 */
	public String getSid() {
		return databaseName;
	}

	/**
	 * @param sid the sid to set
	 */
	public void setSid(String sid) {
		this.databaseName = sid;
	}

	/**
	 * @return the max_pool_size
	 */
	public int getMax_pool_size() {
		return max_pool_size;
	}

	/**
	 * @param max_pool_size the max_pool_size to set
	 */
	public void setMax_pool_size(int max_pool_size) {
		this.max_pool_size = max_pool_size;
	}

	/**
	 * @return the init_pool_size
	 */
	public int getInit_pool_size() {
		return init_pool_size;
	}

	/**
	 * @param init_pool_size the init_pool_size to set
	 */
	public void setInit_pool_size(int init_pool_size) {
		this.init_pool_size = init_pool_size;
	}

	/**
	 * @return the min_pool_size
	 */
	public int getMin_pool_size() {
		return min_pool_size;
	}

	/**
	 * @param min_pool_size the min_pool_size to set
	 */
	public void setMin_pool_size(int min_pool_size) {
		this.min_pool_size = min_pool_size;
	}

	/**
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the end_time
	 */
	public long getEnd_time() {
		return end_time;
	}

	/**
	 * @param end_time the end_time to set
	 */
	public void setEnd_time(long end_time) {
		this.end_time = end_time;
	}

	/**
	 * @return the time_out
	 */
	public long getTime_out() {
		return time_out;
	}

	/**
	 * @param time_out the time_out to set
	 */
	public void setTime_out(long time_out) {
		this.time_out = time_out;
	}

	/**
	 * @return the user
	 */
	public String getUser() {
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(String user) {
		this.user = user;
	}

	/**
	 * @return the start_time
	 */
	public long getStart_time() {
		return start_time;
	}

	/**
	 * @param start_time the start_time to set
	 */
	public void setStart_time(long start_time) {
		this.start_time = start_time;
	}

	/**
	 * @return the thread
	 */
	public Thread getThread() {
		return thread;
	}

	/**
	 * @param thread the thread to set
	 */
	public void setThread(Thread thread) {
		this.thread = thread;
	}
	
	
}
