<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<div class="left">
	<div class="scroll">
		<div class="mobile-close" onclick="closeSideBar()"><i class="fas fa-times-circle"></i></div>
		
		<ul class="dashboard-menu">
		<li><a href="home"><div class="menu-text"><i class="fas fa-home"></i> Home</div></a></li>
		<li><a href="upload-irussor"><div class="menu-text"><i class="fa-solid fa-print"></i>Create RFI</div></a></li>
		<li><span><div class="menu-text"><i class="fa-solid fa-file-pen"></i> Update RFI</div> <i class="fas fa-chevron-down"></i></span>
			<ul class="sub-menu">
				<li><a href="upload-contract-schedules"><div class="menu-text">Upload RFI</div></a></li>
				<li><a href="boqList">Select RFI</a></li>
			</ul>
		</li>	
		<li><a href="mbList"><div class="menu-text"><i class="fa-solid fa-file-invoice"></i>RFI Log</div></a></li>
		<li><a href="emb-validation"><div class="menu-text"><i class="fa-solid fa-folder-tree"></i>Inspection</div></a></li>
		<li><span><div class="menu-text"><i class="fa-solid fa-download"></i>Download Enclosures</div> <i class="fas fa-chevron-down"></i></span>
			<ul class="sub-menu">
				<li><a href="raBillsList">On Account Bill</a></li>
				<li><a href="finalBillsList">Final Bill</a></li>
			</ul>
		</li>
		</ul>
	</div>			
</div>