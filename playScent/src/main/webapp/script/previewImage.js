/**
 * 이미지 미리보기
 */

function previewImage(event, previewId) {
	var input = event.target;
	var reader = new FileReader();

	reader.onload = function() {
		var dataURL = reader.result;
		var preview = document.getElementById(previewId);
		preview.src = dataURL;
	};

	reader.readAsDataURL(input.files[0]);
}