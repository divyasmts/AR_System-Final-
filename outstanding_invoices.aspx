<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="outstanding_invoices.aspx.cs" Inherits="AR_System.ARS.Modules.outstanding_invoices" %>

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
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
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
                        <li class="dropdown active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">AR Deptor Entry <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="entry_invoice.aspx">Invoice</a></li>
                                <li class="active"><a href="entry_payment.aspx">Payment</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">AR Debtor Bank					
 <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="bank_slip.aspx">Slip</a></li>
                                <li><a href="bank_recon.aspx">Reconciliation</a></li>
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
     padding-left : 15px;
     padding-top : 10px;
 }
     
 </style>
    </header>
     <section id="main-slider" class="no-margin" style="background-color: #dacccc;">
     <div class="carousel slide" style="background-color: #dacccc;font-family:'Source Sans Pro',Sans-Serif;">
              <br />
     <div class="carousel-inner">
     <div id="reporting">
     <div class="row">
              <h4 class="repotingTitle col-md-12" style="margin-left:15px;">Debtor Invoices</h4>
     </div>
     </div>
     <br /><br />
         <div class="row" style="margin-left:5px;width: 80%;margin-bottom:20px;">
                        <div class="col-md-5">
                            <asp:Label ID="lblCname" runat="server" class="col-md-4" Text="Customer Name" style=""></asp:Label>
                            <asp:TextBox ID="txtCname" runat="server" class="col-nd-1 form-control" style="width:120px;margin-top:-10px;"></asp:TextBox>

                        </div>
                        <div class="col-md-5" style="margin-left:-100px;">
                            <asp:Label ID="lblCcode" runat="server" class="col-md-4" Text="Customer Code" style="margin-left:-90px;"></asp:Label>
                            <asp:TextBox ID="txtCcode" runat="server" class="form-control" style="width:120px;margin-top: -10px;"></asp:TextBox>
                                                
                        </div>   
                           
                   <div class="col-md-4" style="margin-left:-100px;">
                            <asp:Label ID="lblVesselName" runat="server" class="col-md-4" Text="Vessel Name" style="margin-left:-150px;margin-top:-13px;"></asp:Label>
                             <asp:TextBox ID="txtVesselName" runat="server" class="form-control" 
                                    style="margin-top:-15px;width:120px"></asp:TextBox>                   
                        </div>
                                        
                </div>
                 <div class="row" style="margin-left:5px;width: 80%;margin-bottom:20px;s">
                        <div class="col-md-5">
                            <asp:Label ID="lblCustBank" runat="server" class="col-md-4" Text="Customer Bank" style=""></asp:Label>
                            <asp:TextBox ID="txtCustBank" runat="server" class="col-nd-1 form-control" style="width:120px;margin-top:-10px;"></asp:TextBox>

                        </div>
                        <div class="col-md-5" style="margin-left:-100px;">
                            <asp:Label ID="lblPaymentMode" runat="server" class="col-md-4" Text="Payment Mode" style="margin-left:-90px;"></asp:Label>
                            <asp:DropDownList ID="ddlPaymentMode" runat="server" AutoPostBack="true" 
                                    class="form-control" style="font-family: Arial;width:120px;margin-top:-10px;" AppendDataBoundItems="True">
                                    <asp:ListItem Value="0">Select Payment Mode</asp:ListItem>
                                    <asp:ListItem>Cheque</asp:ListItem>
                                    <asp:ListItem>Telegraphic Transfer</asp:ListItem>
                                    <asp:ListItem>Cash</asp:ListItem>
                                    <asp:ListItem>Contra</asp:ListItem>
                                </asp:DropDownList>                    
                        </div>   
                           
                   <div class="col-md-4" style="margin-left:-100px;">
                            <asp:Label ID="lblRefNo" runat="server" class="col-md-4" Text="Ref No." style="margin-left:-150px;margin-top:-13px;"></asp:Label>
                             <asp:TextBox ID="txtRefNo" runat="server" class="form-control" 
                                    style="margin-top:-15px;width:120px"></asp:TextBox>                   
                        </div>
                                        
                </div>
                
                <div class="row" style="margin-left:5px;margin-bottom:30px;">
                        <div class="col-md-5" style="">
                            <asp:Label ID="lblRecNumb" runat="server" class="col-md-4" Text="Receipt No" style="margin-right:-40px"></asp:Label>
                            <asp:TextBox ID="txtRecNumb" runat="server" class="form-control" style="width:120px;margin-top:-10px;margin-left:-60px;"></asp:TextBox>                 
                        </div> 
                        <div class="col-md-5" style="margin-left:-100px;">
                            <asp:Label ID="lblBankChar" runat="server" class="col-md-4" Text="Bank Charges" style="margin-left:-205px;"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" style="width:120px;margin-top:-10px;margin-left:-67px"></asp:TextBox>                 
                        </div>
                        <div class="col-md-2" style="margin-left:-100px;">
                            <asp:Label ID="lblDate" runat="server" class="col-md-4" Text="Date" style="margin-left:-381px;"></asp:Label>
                            <asp:TextBox ID="txtDate" runat="server" class="form-control" style="width:120px;margin-top:-10px;margin-left:-234px;"></asp:TextBox>                 
                        </div> 
                        
                        </div>  
                  <div class="row" id="userentry" style="margin-left:0px;">
                <asp:Label ID="Label20" runat="server"   class="col-md-1"  Text="" ForeColor="Black"></asp:Label> 
                      <asp:Label ID="Label21" runat="server"   class="col-md-2"  Text="Invoice Number" ForeColor="Black"></asp:Label> 
                      <asp:Label ID="Label22" runat="server"  class="col-md-2"  Text="Amount Due" ForeColor="Black"></asp:Label> 
               <asp:Label ID="Label23" runat="server"  class="col-md-2"  Text="Amount Paid"  ForeColor="Black" style="text-align:center"></asp:Label> 
                <asp:Label ID="Label24" runat="server"  class="col-md-2"  Text="Difference " ForeColor="Black" style="margin-left: 36px;"></asp:Label> 
                   <asp:Label ID="Label25" runat="server"   class="col-md-2"  Text="Remarks" ForeColor="Black" style="text-align:center"></asp:Label> 
                   
                             </div>  
                               <div class="row" id="Div1" style="margin-left:10px;">
                            <div class="add">
                               <asp:Checkbox ID="TextBox26" runat="server" class="col-md-1" style="width: 7%;" ></asp:CheckBox>
                 <asp:TextBox ID="TextBox27" runat="server" class="col-md-2 form-control" style="width: 13%;"    ></asp:TextBox> 
                      <asp:TextBox ID="TextBox28" runat="server" class="col-md-2  form-control"  style="width:19%;"   ></asp:TextBox>
                      <asp:TextBox ID="TextBox29" runat="server" class="col-md-2  form-control"   style="width: 19%;"   ></asp:TextBox>               
             <asp:TextBox ID="TextBox30" runat="server" class="col-md-2  form-control"  style="width: 19%;" ></asp:TextBox>                       
              <asp:TextBox ID="TextBox31" runat="server" class="col-md-2  form-control"  style="width: 19%;"   ></asp:TextBox>                      
                                                        </div>     
                                                        
                                                         </div>
                                                          <div class="row" id="Div2" style="margin-left:10px;">
                            <div class="add">
                               <asp:Checkbox ID="Checkbox1" runat="server" class="col-md-1" style="width: 7%;" ></asp:CheckBox>
                 <asp:TextBox ID="TextBox2" runat="server" class="col-md-2 form-control" style="width: 13%;"    ></asp:TextBox> 
                      <asp:TextBox ID="TextBox3" runat="server" class="col-md-2  form-control"  style="width:19%;"   ></asp:TextBox>
                      <asp:TextBox ID="TextBox4" runat="server" class="col-md-2  form-control"   style="width: 19%;"   ></asp:TextBox>               
             <asp:TextBox ID="TextBox5" runat="server" class="col-md-2  form-control"  style="width: 19%;" ></asp:TextBox>                       
              <asp:TextBox ID="TextBox6" runat="server" class="col-md-2  form-control"  style="width: 19%;"   ></asp:TextBox>                      
                                                        </div>     
                                                        
                                                         </div>
                                                          <div class="row" id="Div3" style="margin-left:10px;">
                            <div class="add">
                               <asp:Checkbox ID="Checkbox2" runat="server" class="col-md-1" style="width: 7%;" ></asp:CheckBox>
                 <asp:TextBox ID="TextBox7" runat="server" class="col-md-2 form-control" style="width: 13%;"    ></asp:TextBox> 
                      <asp:TextBox ID="TextBox8" runat="server" class="col-md-2  form-control"  style="width:19%;"   ></asp:TextBox>
                      <asp:TextBox ID="TextBox9" runat="server" class="col-md-2  form-control"   style="width: 19%;"   ></asp:TextBox>               
             <asp:TextBox ID="TextBox10" runat="server" class="col-md-2  form-control"  style="width: 19%;" ></asp:TextBox>                       
              <asp:TextBox ID="TextBox11" runat="server" class="col-md-2  form-control"  style="width: 19%;"   ></asp:TextBox>                      
                                                        </div>     
                                                        
                                                         </div>
                                                          <div class="row" id="Div4" style="margin-left:10px;">
                            <div class="add">
                               <asp:Checkbox ID="Checkbox3" runat="server" class="col-md-1" style="width: 7%;" ></asp:CheckBox>
                 <asp:TextBox ID="TextBox12" runat="server" class="col-md-2 form-control" style="width: 13%;"    ></asp:TextBox> 
                      <asp:TextBox ID="TextBox13" runat="server" class="col-md-2  form-control"  style="width:19%;"   ></asp:TextBox>
                      <asp:TextBox ID="TextBox14" runat="server" class="col-md-2  form-control"   style="width: 19%;"   ></asp:TextBox>               
             <asp:TextBox ID="TextBox15" runat="server" class="col-md-2  form-control"  style="width: 19%;" ></asp:TextBox>                       
              <asp:TextBox ID="TextBox16" runat="server" class="col-md-2  form-control"  style="width: 19%;"   ></asp:TextBox>                      
                                                        </div>     
                                                        
                                                         </div>
                               <div class="row" id="Div5" style="margin-left:10px;margin-bottom:10px;">
                            <div class="add">
                               <div class="col-md-1" style="width: 7%;" ></div>
                      <asp:Label ID="Label1" runat="server"   class="col-md-2 "  Text="Total" style="width: 13%;margin-top:10px;"  ForeColor="Black"></asp:Label> 
                      <asp:TextBox ID="TextBox18" runat="server" class="col-md-2  form-control"  style="width:19%;"   ></asp:TextBox>
                      <asp:TextBox ID="TextBox19" runat="server" class="col-md-2  form-control"   style="width: 19%;"   ></asp:TextBox>               
                      <asp:TextBox ID="TextBox20" runat="server" class="col-md-2  form-control"  style="width: 19%;" ></asp:TextBox>                       
                                    </div>     
                                     </div>
                                         <div class="row" id="Div6" style="margin-left:10px;margin-bottom:20px;">
                            <div class="add">
                               <div class="col-md-1" style="width: 7%;" ></div>
                      <div  class="col-md-2 "  style="width: 13%;"  ></div> 
                      <asp:Label ID="TextBox17" runat="server" class="col-md-4" Text="Do You want Bank In Slip now?"  style="width:19%;"   ></asp:Label>
                      <asp:CheckBox ID="CheckBox9"  class="col-md-2" runat="server"  style="width: 19%;"></asp:CheckBox>
                       </div>     
                                     </div>
                                     <div class="row">
                      <asp:Button ID="Button1" class="btn-primary col-md-2" runat="server" Text="Submit"  style="width: 19%;font-weight:bold;margin-left:554px;margin-bottom:20px;"></asp:Button>
                                     </div>
                  
                </div>
                
                    
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        
    </section>
    <!--/#main-slider-->
    
    <!--/#bottom-->
    <footer id="footer" class="midnight-blue">
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