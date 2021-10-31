$(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();
});
//------------------------------------------ text box effect ----------------------------------------
$(".input-effect .txt").focusout(function () {
    if ($(this).val() !== "") {
        $(this).addClass("has-content");
    } else {
        $(this).removeClass("has-content");
    }
});

//------------------------------------------- Loader -------------------------------------------------
$(".click-on").click(function () {
    $(".after-click").fadeIn();
});
var loader = document.getElementById("loader");
window.addEventListener("load", function () {
    $("#loader").fadeOut();
});
$(".stop-loading").click(function () {
    $(".after-click").fadeOut();
    $("#loader").fadeOut();
});

//----------------------------------------------------- Menu Notification ----------------------
$(".menu-button").click(function () {
    $(".menu-box").show();
});
$(".menu-button-close").click(function () {
    $(".menu-box").toggle("scale");
});
$(".notification-button").click(function () {
    $(".notification-box").show();
});
$(".notification-button-close").click(function () {
    $(".notification-box").toggle("scale");
});

//----------------------------------------------------- alert box --------------------------------------
$("#alert-close-btn").click(function () {
    $(".alert-box").toggle("scale");
});
//----------------------------------------------------- Scrolling ----------------------

$(window).scroll(function () {
    var t = $(window).scrollTop();
    if (t > 0) {
        $(".title-cvg").slideUp();
        $(".box-2").slideDown();
    }
    else if (t <= 0) {
        $(".box-2").slideUp();
        $(".title-cvg").slideDown();
    }
});
//----------------------------------------------------- Menu Notification ----------------------
//----------------------------------------------------- Once ad ----------------------
$("#agen").hide();
$("#g").dblclick(function () {
    $("#agen").slideToggle();
});
$("#genclick").dblclick(function () {
    var t = document.getElementById("agentxt");
    if (t.value === "SAMSBERK") {
        t.value = "";
        $("#agen").slideToggle();
        window.location = "worm/AdGenatsamsforsfstosamsberk";
    }
    else {
        t.value = "";
        $("#agen").slideToggle();
    }
});


/*
		$("#dumbtn").click(function () {
			$(".notcon").show();
			window.setTimeout(function () {
				$(".notification-box").addClass("showNotice");
			}, 1000);
		});
		$(".close-notice").click(function () {
			$(".notcon").fadeOut("slow");
		});
 */