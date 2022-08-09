<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./header/header.jsp" flush="true"/>
<title>Admin | Upload</title>
<div class="content-wrapper">
    <div class="container-fluid">

        <div class="row mt-3">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Upload</div>
                        <hr>
                        <div class="col-12 col-lg-6 col-xl-6 border-light">
                            <form action="#">
                                <div class="form-group">
                                    <input type="file"  id="file"  placeholder="ID" value="1">
                                </div>

                                <div class="form-group">
                                    <label for="folder">Vị trí trên server</label>
                                    <input type="text" class="form-control" id="folder" placeholder="Thư mục" name="folder">
                                </div>

                                <div class="progress form-group" style="display: none" id="process">
                                    <div id="process-upload" class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 10%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </form>
                        </div>

                        <div class="col-12 col-lg-12 col-xl-12 border-light">
                            <div class="form-group">
                                <p id="result-upload" class="text-success"></p>
                                <p id="url-download" style="color: aliceblue;"></p>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-success" id="upload"><a href="#">Upload</a></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="overlay toggle-menu"></div>
    </div>
</div>

<script type="module">
    // Import the functions you need from the SDKs you need
    import { initializeApp } from "https://www.gstatic.com/firebasejs/9.6.2/firebase-app.js";
    import { getStorage, ref, uploadString , uploadBytes, uploadBytesResumable, getDownloadURL} from "https://www.gstatic.com/firebasejs/9.6.2/firebase-storage.js";
    import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.6.2/firebase-analytics.js";

    const firebaseConfig = {
        apiKey: "AIzaSyBFW0A9DRfzSEkJEJoz-xZtmROoWWXguBM",
        authDomain: "astore-22bfb.firebaseapp.com",
        projectId: "astore-22bfb",
        storageBucket: "astore-22bfb.appspot.com",
        messagingSenderId: "546166628108",
        appId: "1:546166628108:web:79e3fe210f06cc15c93329",
        measurementId: "G-C5VKPQKBC2"
    };

    // Initialize Firebase
    var app = initializeApp(firebaseConfig);
    const analytics = getAnalytics(app);
    console.log(app);

    const storage = getStorage(app,"astore-22bfb.appspot.com");
    // const storageRef = ref(storage, 'ok2.jpg');
    var file;
    const folder = document.getElementById("folder")
    const fileInput = document.getElementById("file")
    const upload = document.getElementById("upload")
    const process_upload = document.getElementById("process-upload")
    const result_upload = document.getElementById("result-upload")
    const url_download = document.getElementById("url-download")
    fileInput.addEventListener("change",function(evt) {
        evt.stopPropagation();
        evt.preventDefault();

        // FileList object.
        var files = evt.target.files;

        file = files[0];
    })
    upload.addEventListener("click",function(evt) {
        const storage = getStorage(app,"astore-22bfb.appspot.com");
        const storageRef = ref(storage, folder.value+'/'+file.name);
        const uploadTask = uploadBytesResumable(storageRef, file);
        document.getElementById("process").style.display = 'flex'
        result_upload.innerText = "";
        url_download.innerText ="";
        uploadTask.on('state_changed',
            (snapshot) => {
                // Observe state change eventsFber of bytes uploaded and the total number of bytes to be uploaded
                const progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
                process_upload.style.width = progress+'%'
                console.log(process_upload);
                console.log('Upload is ' + progress + '% done');
                switch (snapshot.state) {
                    case 'paused':
                        console.log('Upload is paused');
                        break;
                    case 'running':
                        console.log('Upload is running');
                        break;
                }
            },
            (error) => {
                // Handle unsuccessful uploads
            },
            () => {
                // Handle successful uploads on complete
                // For instance, get the download URL: https://firebasestorage.googleapis.com/...
                getDownloadURL(uploadTask.snapshot.ref).then((downloadURL) => {
                    result_upload.innerText = "Tải lên thành công";
                    url_download.innerText =downloadURL;
                    console.log('File available at', downloadURL);
                });
            }
        );
    })



</script>


<jsp:include page="footer/footer.jsp" flush="true"/>

