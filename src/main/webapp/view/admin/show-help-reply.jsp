<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/header.jsp" flush="true"/>
<title>Admin | Reply</title>

<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row mt-3">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Phản hồi</div>
                        <hr>
                        <form method="post" action="<%=request.getContextPath()%>/manage/replyToEmail">
                            <div class="form-group">
                                <label for="input-1">Mã hỗ trợ</label>
                                <input type="text" class="form-control" readonly id="input-1" placeholder="ID" value="1"
                                       name="help-id">
                            </div>
                            <div class="form-group">
                                <label for="input-2">Tiêu đề</label>
                                <input type="text" class="form-control" id="input-2" placeholder="Tiêu đề" value=""
                                       name="help-title">
                            </div>
                            <div class="form-group">
                                <label for="input-3">Nội dung</label>
                                <textarea class="form-control" rows="4" id="input-3" name="help-content"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="input-4">Người hỗ trợ</label>
                                <div>
                                    <select class="form-control valid" id="input-4" name="help-author">
                                        <option value="${idPeopleHelp}">${namePeopleHelp}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="input-5 ">Ngày đăng</label>
                                <input type="date" class="form-control " id="input-5 " value="2021-06-05 "
                                       name="help-created ">
                            </div>
                            <div class="form-footer ">
                                <button class="btn btn-danger "><a href="<%=request.getContextPath()%>/view/admin/show-help.jsp">Hủy</a></button>
                                <button class="btn btn-success" type="submit"><a >Phản hồi</a></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="overlay toggle-menu "></div>
    </div>
</div>

<jsp:include page="./footer/footer.jsp" flush="true"/>
