$(document).ready(function () {

    $("#sub").click(function () {
        var name = $("input[name='name']").val();
        var phone = $("input[name='phone']").val();
        var school = $("input[name='school']").val();
        var major = $("#xiala option:selected").val();

        $.ajax({
            url: "/addOne",
            type: "POST",
            data: {name: name, phone: phone, school: school, major: major},
            dataType: "json",
            success: function (data) {
                alert(data);
            },
            error: function () {
                alert("添加失败");
            }
        });
    });
});