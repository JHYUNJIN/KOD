function previewImage(event) {
    var reader = new FileReader();
    reader.onload = function() {
        var output = document.getElementById('imagePreview');
        output.src = reader.result;

        var cancelButton = document.getElementById('cancelImageButton');
        cancelButton.style.display = "inline-block";
    }

    var input = event.target;
    if (input.files.length === 0) {
        var output = document.getElementById('imagePreview');
        output.src = "";
        var cancelButton = document.getElementById('cancelImageButton');
        cancelButton.style.display = "none";
    } else {
        // 추가: 파일 크기 체크
        var fileSize = input.files[0].size; // 파일 크기 (바이트)
        var maxFileSize = 5 * 1024 * 1024; // 5MB

        if (fileSize > maxFileSize) {
            alert('파일 크기가 5MB를 초과합니다. 더 작은 파일을 선택해주세요.');
            // 선택한 파일 초기화
            input.value = '';
            return;
        }

        reader.readAsDataURL(input.files[0]);
    }
}

function cancelImageUpload() {
    var imageUpload = document.getElementById('imageUpload');
    var imagePreview = document.getElementById('imagePreview');

    imageUpload.value = "";
    imagePreview.src = "";

    var cancelButton = document.getElementById('cancelImageButton');
    cancelButton.style.display = "none";
}

/* MVC2 패턴
 FC Servlet의 등장
 FC가 이 프로젝트의 유일한 서블릿 => 동기면 무조건 FC를 통해서감
 모든 요청을 Action 클래스를 통해 처리
    매핑 => HM : 싱글톤
 비동기때문에 추가 서블릿이 필요한 상황일뿐!
*/ 
 
function validateForm() {
    // 1. 별점이 선택되었는지 확인
    var ratingInputs = document.getElementsByName('score');
    var isRatingSelected = false;

    for (var i = 0; i < ratingInputs.length; i++) {
        if (ratingInputs[i].checked) {
            isRatingSelected = true;
            break;
        }
    }

    if (!isRatingSelected) {
        alert('별점을 선택해주세요.');
        return false; // 폼 제출 방지
    }

    // 2. 제목과 내용이 최소 5자 이상인지 확인
    var titleInput = document.getElementById('title');
    var contentInput = document.getElementById('content');

    if (titleInput.value.length < 5 || contentInput.value.length < 5) {
        alert('제목과 내용은 최소 5자 이상 입력해주세요.');
        return false; // 폼 제출 방지
    }

    // 모든 조건을 통과하면 폼 제출 허용
    return true;
}
 
// 글자 수 세기 함수
function countCharacters(inputId, counterId, maxLength) {
    const input = document.getElementById(inputId);
    const counter = document.getElementById(counterId);

    input.addEventListener('keyup', function () {
        // 수정된 부분: 공백을 포함한 글자 수 세기
        const currentText = input.value.replace(/\s+/g, '');
        const currentLength = currentText.length;
        counter.textContent = currentLength + '/' + maxLength;

        // 수정된 부분: 3번 이상 연속된 공백이 입력되었을 경우 알림 및 처리
        const consecutiveSpaces = input.value.match(/ {3,}/);
        if (consecutiveSpaces) {
            alert('3번 이상 연속된 공백을 입력할 수 없습니다.');
            // 수정된 부분: 3번 이상 연속된 공백을 모두 제거
            input.value = input.value.replace(/ {3,}/g, ' ');
            // 글자 수 재계산
            const updatedText = input.value.replace(/\s+/g, '');
            const updatedLength = updatedText.length;
            counter.textContent = updatedLength + '/' + maxLength;
        }
    });
}

// 제목과 내용에 글자 수 제한 적용
countCharacters('title', 'titleCounter', 50);
countCharacters('content', 'contentCounter', 500);
