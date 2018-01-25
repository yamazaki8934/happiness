$(document).on('turbolinks:load', function(){
  $(document).on('keyup', '#form', function(e){
    e.preventDefault();
    var input = $.trim($(this).val());

    $.ajax({
      url: '/users/search', //urlを指定
      type: 'GET', //メソッドを指定
      data: ('keyword=' + input), //コントローラーに渡すデータを'keyword=input(入力された文字のことですね)'にするように指定
      processData: false,
      contentType: false,
      dataType: 'json' //データ形式を指定
    })

    .done(function(data){ //データを受け取ることに成功したら、dataを引数に取って以下のことする(dataには@usersが入っている状態ですね)
      $('#result').find('li').remove();  //idがresultの子要素のliを削除する
      $(data).each(function(i, user){ //dataをuserという変数に代入して、以下のことを繰り返し行う(単純なeach文ですね)
        $('#result').append('<li>' + user.nickname + '</li>') //resultというidの要素に対して、<li>ユーザーの名前</li>を追加する。
      });
    })
  });
});
