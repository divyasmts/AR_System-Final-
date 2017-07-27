<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bank_recon.aspx.cs" Inherits="AR_System.ARS.Modules.bank_recon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Home | AR System</title>
    <%-- ------ CSS ------ --%>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/favicon.ico" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
        type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
        rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("[id$=txtDate]").datepicker({
                showOn: 'button',
                buttonImageOnly: true,
                buttonImage: 'calendar.png'
            });
        });
    </script>
    <style type="text/css">
        .style1
        {
            font-family: Arial;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <header id="header">
    <div class="top-bar">
    <div class="container">
    <div class="row">
    
    </div>
      </div><%--container--%>
        </div><%--/top-bar--%>
      <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><img src="" alt="AR Systems"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li ><a href="Default.aspx">Home</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">AR Deptor Entry <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="entry_invoice.aspx">Invoice</a></li>
                                <li><a href="entry_payment.aspx">Payment</a></li>
                            </ul>
                        </li>
                        <li class="dropdown active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">AR Debtor Bank					
 <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="bank_slip.aspx">Slip</a></li>
                                <li class="active"><a href="bank_recon.aspx">Reconciliation</a></li>
                            </ul>
                        </li>
                       <li><a href="reporting.aspx">AR Debtor Reporting										
</a></li>
                        <li><a href="query.aspx">AR Debtor Query										
</a></li>            
                        <li><a href="maintenance.aspx">AR Debtor Maintenance										
</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 <style>
     td
     {
         padding-left: 15px;
         padding-top: 10px;
     }
     .style2
     {
         height: 101px;
     }
 </style>
    </header>
    <section id="main-slider" class="no-margin" style="background-color: #dacccc;">
        <div class="carousel slide" style="background-color: #dacccc;font-family:'Source Sans Pro',Sans-Serif;">
         <br />
            <div class="carousel-inner">
                <div id="reporting">
               <div class="row">
                    <h4 class="repotingTitle col-md-12 style="margin-left:15px;"><i class="fa fa-pencil-square-o" style="color: darkblue;margin-right:5px;" ></i>Payment To Reconcile</h4>
               </div>
                </div>
           <div class="row" id="userentry" style="margin-left:10px;">
                <asp:Label ID="lblSlipNumb" runat="server"   class="col-md-1"  Text="Cheque No" ForeColor="Black"></asp:Label> 
                <asp:Label ID="lblAmount" runat="server"   class="col-md-1"  Text="Amount" ForeColor="Black"></asp:Label> 
                <asp:Label ID="lblBank" runat="server"  class="col-md-1"  Text="Bank" ForeColor="Black"></asp:Label> 
                <asp:Label ID="lblAccountNo" runat="server"  class="col-md-1"  Text="Account No"  ForeColor="Black" style="text-align:center"></asp:Label> 
                <asp:Label ID="lblDiff" runat="server"  class="col-md-1"  Text="Difference" ForeColor="Black" style="margin-left: 36px;"></asp:Label> 
                <asp:Label ID="lblReceipt" runat="server"   class="col-md-1"  Text="Receipt No" ForeColor="Black" style="text-align:center;margin-left: 16px;"></asp:Label>
                <asp:Label ID="lblRemark" runat="server"   class="col-md-1"  Text="Remark" ForeColor="Black" style="margin-left: 74px;"></asp:Label> 
                 
           </div>  
     <div class="row" id="Div2" style="margin-left:10px;">
          <div class="add">
               <asp:TextBox ID="txtslipNumber1" runat="server" class="col-md-1 form-control" style="width: 7%;" ></asp:TextBox>
               <asp:TextBox ID="txtAmount1" runat="server" class="col-md-1 form-control" style="width: 8%;"    ></asp:TextBox>
               <asp:TextBox ID="txtBank1" runat="server" class="col-md-2  form-control"   style="width: 10%;"   ></asp:TextBox>               
               <asp:TextBox ID="txtAccountNo1" runat="server" class="col-md-2  form-control"  style="width: 10%;" ></asp:TextBox>                       
               <asp:TextBox ID="txtDiff1" runat="server" class="col-md-2  form-control"  style="width: 10%;"   ></asp:TextBox>                      
               <asp:TextBox ID="txtReceipt1" runat="server" class="col-md-2  form-control"  style="width: 12%;"  ></asp:TextBox>
               <asp:TextBox ID="txtRemark1" runat="server" class="col-md-2  form-control"  style="width: 10%;"  ></asp:TextBox>
                 <div class="iconBtn" style="position:relative;left:10px;">
                    <div><i class="fa fa-plus-circle" aria-hidden="true"></i></div>
                    <div><i class="fa fa-minus-circle" aria-hidden="true"></i></div>
                </div> 
           </div>  
   </div>
     <div class="row" id="Div1" style="margin-left:10px;">
          <div class="add">
               <asp:TextBox ID="txtslipNumber2" runat="server" class="col-md-1 form-control" style="width: 7%;" ></asp:TextBox>
               <asp:TextBox ID="txtAmount2" runat="server" class="col-md-1 form-control" style="width: 8%;"    ></asp:TextBox>
               <asp:TextBox ID="txtbank2" runat="server" class="col-md-2  form-control"   style="width: 10%;"   ></asp:TextBox>               
               <asp:TextBox ID="txtAccountNo2" runat="server" class="col-md-2  form-control"  style="width: 10%;" ></asp:TextBox>                       
               <asp:TextBox ID="txtDiff2" runat="server" class="col-md-2  form-control"  style="width: 10%;"   ></asp:TextBox>                      
               <asp:TextBox ID="txtReceipt2" runat="server" class="col-md-2  form-control"  style="width: 12%;"  ></asp:TextBox>
               <asp:TextBox ID="txtRemark2" runat="server" class="col-md-2  form-control"  style="width: 10%;"  ></asp:TextBox>
      </div>  
   </div>
     <div class="row" id="Div3" style="margin-left:10px;">
          <div class="add">
               <asp:TextBox ID="txtslipNumber3" runat="server" class="col-md-1 form-control" style="width: 7%;" ></asp:TextBox>
               <asp:TextBox ID="txtamount3" runat="server" class="col-md-1 form-control" style="width: 8%;"    ></asp:TextBox>
               <asp:TextBox ID="txtBank3" runat="server" class="col-md-2  form-control"   style="width: 10%;"   ></asp:TextBox>               
               <asp:TextBox ID="txtaccountNo3" runat="server" class="col-md-2  form-control"  style="width: 10%;" ></asp:TextBox>                       
               <asp:TextBox ID="txtdiff3" runat="server" class="col-md-2  form-control"  style="width: 10%;"   ></asp:TextBox>                      
               <asp:TextBox ID="txtReceipt3" runat="server" class="col-md-2  form-control"  style="width: 12%;"  ></asp:TextBox>
               <asp:TextBox ID="txtRemark3" runat="server" class="col-md-2  form-control"  style="width: 10%;"  ></asp:TextBox>
       </div> 
     </div>
       <div class="row" id="Div4" style="margin-left:10px;">
          <div class="add">
               <asp:TextBox ID="txtslipNumber4" runat="server" class="col-md-1 form-control" style="width: 7%;" ></asp:TextBox>
               <asp:TextBox ID="txtAmount4" runat="server" class="col-md-1 form-control" style="width: 8%;"    ></asp:TextBox>
               <asp:TextBox ID="txtBank4" runat="server" class="col-md-2  form-control"   style="width: 10%;"   ></asp:TextBox>               
               <asp:TextBox ID="txtAccountNo4" runat="server" class="col-md-2  form-control"  style="width: 10%;" ></asp:TextBox>                       
               <asp:TextBox ID="txtdiff4" runat="server" class="col-md-2  form-control"  style="width: 10%;"   ></asp:TextBox>                      
               <asp:TextBox ID="txtReceipt4" runat="server" class="col-md-2  form-control"  style="width: 12%;"  ></asp:TextBox>
               <asp:TextBox ID="txtRemark4" runat="server" class="col-md-2  form-control"  style="width: 10%;"  ></asp:TextBox>
        </div>  
   </div>
   <div class="row">
   </div>
   <div class="row">
   <div class="col-md-5"></div>
              <asp:Button ID="Button1" class="btn-primary" runat="server" Text="Submit"  style="font-weight:bold;margin-left:-700px;"></asp:Button>
   <div class="col-md-5"></div>
   </div>
   </div>
   </div><!--/.carousel-inner-->
</div><!--/.carousel-->
</section>
    <!--/#main-slider-->
    <!--/#bottom-->
<footer id="footer" class="midnight-blue" >
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2017 <a target="_blank" href="#" title="">AR System</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <a href="#" class="back-to-top"><i class="fa fa-2x fa-angle-up"></i></a>
    </footer>
    <!--/#footer-->
    <!-- Back To Top -->
    <script type="text/javascript">
        jQuery(document).ready(function () {
            var offset = 300;
            var duration = 500;
            jQuery(window).scroll(function () {
                if (jQuery(this).scrollTop() > offset) {
                    jQuery('.back-to-top').fadeIn(duration);
                } else {
                    jQuery('.back-to-top').fadeOut(duration);
                }
            });

            jQuery('.back-to-top').click(function (event) {
                event.preventDefault();
                jQuery('html, body').animate({ scrollTop: 0 }, duration);
                return false;
            })
        });
    </script>
    <!-- /top-link-block -->
    <!-- Jscript -->
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
    <script src="js/jquery.isotope.min.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/wow.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
