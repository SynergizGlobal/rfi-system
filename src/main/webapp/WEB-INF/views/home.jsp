
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<!DOCTYPE>
<html>
<head>
	<title>Create BOQ</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" type="text/css" href="/css/style.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<style>

 .dashboard-main {
            text-align: center; /* Center align content */
        }

        .dashboard-main h1 {
            font-size: 30px;
            font-weight: 400; 
			color: #4C70D8;
        }
		.cards-section{
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
			gap: 45px 20px;
			width: 100%;
		}
		.cards{
			
			flex: 0 0 33%;
			justify-content: center;
			color: #fff;
			font-weight: 700;
		}
		.card-inner{
			background: #3EA5D3;
			background: linear-gradient(147deg,rgba(62, 165, 211, 1) 0%, rgba(16, 74, 101, 1) 100%);
			border-radius: 10px;
			display: flex;
			flex-direction: column;
			width: 100%;
			max-width: 200px;
			padding: 10px;
			gap: 15px;
		}
		.card-top{
			display: flex;
			justify-content: space-between;
		}
		.card-bottom{
			display: flex;
		}
		.card-number{
			text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.75);
		}
</style>
</head>
<body>
	<%@ include file="headerRight.jsp" %>
	<div class="dashboard">
		<%@ include file="header.jsp" %>
		<div class="right">
			
		
		
			<div class="dashboard-main">

	<div class="home-body">
		<h1>Welcome to RFI System</h1>
		<div class="body-content">
			
			<div class="cards-section">
				<!-- card - 1 -->
				<div class="cards">
					<div class="card-inner">
						<div class="card-top">
							<div class="card-count">
								<span class="card-number">100</span>
							</div>
							<div class="cards-icon">
								<img src="/images/check-icon.png" alt="tick symbol" width="25" height="25">
							</div>
						</div>
						<div class="card-bottom">
							<div class="card-title">
								<span class="card-text">RFI created</span>
							</div>
						</div>
					</div>
				</div>
				<!-- card - 2  -->
				 <div class="cards">
					<div class="card-inner">
						<div class="card-top">
							<div class="card-count">
								<span class="card-number">73</span>
							</div>
							<div class="cards-icon">
								<img src="/images/verify.png" alt="tick symbol" width="25" height="25">
							</div>
						</div>
						<div class="card-bottom">
							<div class="card-title">
								<span class="card-text">Inspections </span>
							</div>
						</div>
					</div>
				</div>
				<!-- card - 3  -->
				 <div class="cards">
					<div class="card-inner">
						<div class="card-top">
							<div class="card-count">
								<span class="card-number">13</span>
							</div>
							<div class="cards-icon">
								<img src="/images/caution.png" alt="tick symbol" width="25" height="25">
							</div>
						</div>
						<div class="card-bottom">
							<div class="card-title">
								<span class="card-text">Pending</span>
							</div>
						</div>
					</div>
				</div>
				<!-- card - 4  -->
				 <div class="cards">
					<div class="card-inner">
						<div class="card-top">
							<div class="card-count">
								<span class="card-number">5</span>
							</div>
							<div class="cards-icon">
								<img src="/images/calender.png" alt="tick symbol" width="25" height="25">
							</div>
						</div>
						<div class="card-bottom">
							<div class="card-title">
								<span class="card-text">Rescheduled</span>
							</div>
						</div>
					</div>
				</div>

			</div>
			




		</div>
	</div>
						
						
								
					</div>
				</div>
					
								

			</div>
	
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
    integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
      <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
		subMenu(document.querySelectorAll('.dashboard-menu li'));
            function subMenu(elem) {
                for (var i = 0; i < elem.length; i++) {
                    elem[i].addEventListener("click", function(e) {
                        var current = this;
                        for (var i = 0; i < elem.length; i++) {
                            if (elem[i] !== current) {
                                elem[i].classList.remove('active');
                            } else if (current.classList.contains('active') === true) {
                                current.classList.remove('active');
                            } else {
                                current.classList.add('active');
                            }
                        }
                    });
                }
                ;
            }
            function sidemenu() {
				var leftSide = document.querySelector(".left");
				leftSide.classList.toggle("half-open");

				var menuItems = document.querySelectorAll('.dashboard-menu li');
				
				menuItems.forEach(function(item) {
					if (item.classList.contains("active")) {
						item.classList.remove("active");
					}
				});
			}
            function closeSideBar(){
            	var leftSide = document.querySelector(".left");
            	if(leftSide.classList.contains("half-open")){
            		leftSide.classList.remove("half-open");
            	}
            }
            // dynamic table script

            
		var i=1;
		$(".addmore").on('click',function(){
			count=$('table.dynamic tr').length;
		    var data="<tr>";
		    data +="<td><input type='text' id='name_schedule"+i+"' name='name_schedule[]'/></td> <td><input type='text' id='chapter_name"+i+"' name='chapter_name[]'/></td><td><input type='text' id='division_name"+i+"' name='division_name[]'/></td><td><button type='button' class='delete'>X</button></td></tr>";
			$('table').append(data);
			i++;
		});

		function select_all() {
			$('input[class=case]:checkbox').each(function(){ 
				if($('input[class=check_all]:checkbox:checked').length == 0){ 
					$(this).prop("checked", false); 
				} else {
					$(this).prop("checked", true); 
				} 
			});
		}

		function check(){
			obj=$('table.dynamic tr').find('span');
			$.each( obj, function( key, value ) {
			id=value.id;
			$('#'+id).html(key+1);
			});
			}
		$('tbody').on('click', '.delete', function () {
            $(this).parent('td').parent('tr').remove();
		  i--;
        });
        
	   
  
	</script>
</body>
</html>