jQuery(document).ready(function($) {

	 var browser_window_hight = document.documentElement.clientHeight;
	 var $pagearea = $('#page_area');
	 var body_h = $pagearea.height();
	 
	 var doc_h = $(document).height();
	
	 var browser_window_width = document.documentElement.clientWidth;
     var body_w = $pagearea.width();

	
	 $('#footer_area').css("width", body_w); 
	 
	 if (body_h < browser_window_hight){
		 $('#footer_area').css("position", "absolute"); 
	 }
	
});   















//function autoResizeDiv()
//        {
//	        document.getElementById('page_area').style.height = document.documentElement.clientHeight - 55 +'px';
//        }
//        window.onresize = autoResizeDiv;
//        autoResizeDiv();
//
//        
        
 
/*---------------------------------verygood to find height of window and element---------------------------------*/
//jQuery(document).ready(function($) {
//	
//	 var b_h = $(document).height();
//	 $('#leftmenupanel_area').html('xxxx' +b_h);
//	/* $('#rightmenupanel_area').html('yyyy' +e_h);*/
//	 var $heightTest = $('#content_area');
//	 var $heightTest1 = $('#rightmenupanel_area');
//	
//     
//	 
//	 $heightTest1.html('Div style set as "height: 180px; padding: 10px; margin: 10px; border: 2px solid blue;"')
//	    .append('<p>Height (.height() returns) : ' + $heightTest.height() + ' [Just Height]</p>')
//	    .append('<p>Inner Height (.innerHeight() returns): ' + $heightTest.innerHeight() + ' [Height + Padding (without border)]</p>')
//	    .append('<p>Outer Height (.outerHeight() returns): ' + $heightTest.outerHeight() + ' [Height + Padding + Border]</p>')
//	    .append('<p>Outer Height (.outerHeight(true) returns): ' + $heightTest.outerHeight(true) + ' [Height + Padding + Border + Margin]</p>');
//});       
       
        
        
        
        
        
        
        
        
        /*function autoResizeDiv()
        {
            document.getElementById('content').style.height = document.documentElement.clientHeight - 35 +'px';
        }
        window.onresize = autoResizeDiv;
        autoResizeDiv();
*/

/*<script language="javascript" type="text/javascript">

        $(window).bind("load", function() {

            var footerHeight = 0,
                    footerTop = 0,
                    $footer = $("#footer_area");

            positionFooter();

            function positionFooter() {

                footerHeight = $footer.height();
                footerTop = ($(window).scrollTop()+$(window).height()-footerHeight)+"px";

                if ( ($(document.body).height()+footerHeight) &lt, $(window).height()) {
                    $footer.css({
                        position: "absolute", width:"100%"
                    }).animate({
                                top: footerTop
                            })
                } else {
                    $footer.css({
                        position: "static", width:"auto"
                    })
                }

            }

            $(window)
                    .scroll(positionFooter)
                    .resize(positionFooter)

        });

    </script>*/
        