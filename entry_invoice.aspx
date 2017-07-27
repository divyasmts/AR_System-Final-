<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entry_invoice.aspx.cs" Inherits="AR_System.ARS.Modules.entry_invoice" %>

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
    
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
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
    <script type="text/javascript">
        $(document).ready(function () {
            $('#txtCcode').hide();
            $('#checkCcode').click(function () {
                if ($(this).is(":checked")) {
                    $('#txtCcode').show();
                    $('#ddlCcode').hide();
                    $('#txtCcode').focus();
                }
                else {
                    $('#ddlCcode').show();
                    $('#txtCcode').hide();
                }
            });
        });
        $(document).ready(function () {
            //$('#ddlVcode').show();
            $('#txtVcode').hide();
            $('#checkVslNew').click(function () {
                if ($(this).is(":checked")) {
                    $('#txtVcode').show();
                    $('#ddlVcode').hide();
                    $('#txtVcode').focus();
                }
                else {
                    $('#ddlVcode').show();
                    $('#txtVcode').hide();
                }
            });
        });
        </script>
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
                                <li class="active"><a href="entry_invoice.aspx">Invoice</a></li>
                                <li><a href="entry_payment.aspx">Payment</a></li>
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
              <h4 class="repotingTitle col-md-12" style="margin-left:15px;">Debtor Invoice Entry</h4>
     </div>
     </div>
     <br /><br />
      <div class="row" style="margin-left:5px;width: 80%;margin-bottom:20px;">
                        <div class="col-md-6">
                            <asp:Label ID="lblInvoiceNumb" runat="server" class="col-md-4" Text="Invoice number" style=""></asp:Label>
                            <asp:TextBox ID="txtInvoiceNumb" runat="server" class="col-md-2 form-control" style="width:200px;margin-top:-10px;"></asp:TextBox>

                        </div>
                        <div class="col-md-6" style="margin-left:-100px;">
                            <asp:Label ID="lblCcode" runat="server" class="col-md-4" Text="New Customer"></asp:Label>
                            <asp:CheckBox ID="chkCode" runat="server" class="col-md-2 " style="width:120px;margin-top: -10px;"></asp:CheckBox>
                                                
                        </div>   
       </div>
         <div class="row" style="margin-left:5px;width: 80%;margin-bottom:20px;">
                        <div class="col-md-6">
                            <asp:Label ID="lblCustCode" runat="server" class="col-md-4" Text="Customer Code" style=""></asp:Label>
                             <asp:DropDownList ID="ddlCustCode" runat="server" class="col-md-2 form-control" 
                                    style="width:200px;font-family: Arial;margin-top:-8px;" AppendDataBoundItems="True" AutoPostBack="True" 
                                    onselectedindexchanged="ddlCustCode_SelectedIndexChanged">
                                    <asp:ListItem Value="0">Select Customer Code</asp:ListItem>
                                    </asp:DropDownList>
                        </div>
                        <div class="col-md-6" style="margin-left:-100px;">
                            <asp:Label ID="lblCustName" runat="server" class="col-md-4" Text="Customer Name"></asp:Label>
                            <asp:TextBox ID="txtCustName" runat="server" class="col-md-2 form-control" style="width:200px;margin-top:-10px;"></asp:TextBox>
                                                
                        </div>   
       </div>
       <div class="row" style="margin-left:5px;width: 80%;margin-bottom:15px;">
                        <div class="col-md-6">
                            <asp:Label ID="lblVesselCode" runat="server" class="col-md-4" Text="Vessel Code" style=""></asp:Label>
                             <asp:DropDownList ID="ddlVesselCode" runat="server" class="col-md-2 form-control" 
                                    style="width:200px;font-family: Arial;margin-top:-8px;" AppendDataBoundItems="True" AutoPostBack="True" 
                                    onselectedindexchanged="ddlVesselCode_SelectedIndexChanged">
                                    <asp:ListItem Value="0">Select Customer Code</asp:ListItem>
                                    </asp:DropDownList>
                        </div>
                        <div class="col-md-6" style="margin-left:-100px;">
                            <asp:Label ID="Label4" runat="server" class="col-md-4" Text="Vessel Name"></asp:Label>
                            <asp:TextBox ID="txtVesselName" runat="server" class="col-md-2 form-control" style="width:200px;font-family: Arial"></asp:TextBox>                   
                        </div>   
       </div>
      
       <%--<div class="row" style="margin-left:5px;width: 80%;margin-bottom:20px;">
                        <div class="col-md-6">
                            <asp:Label ID="Label2" runat="server" class="col-md-4" Text="Date" style=""></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" class="col-md-2 form-control" style="width:200px;margin-top:-10px;"></asp:TextBox>

       </div>--%>
       
       <div class="row" style="margin-left:5px;width: 80%;margin-bottom:20px;">
                        <div class="col-md-6">
                            <asp:Label ID="lblCurrency1" runat="server" class="col-md-4" Text="Currency" style=""></asp:Label>
                             <asp:DropDownList ID="ddlCurrency" runat="server" class="col-md-2 form-control" 
                                    style="width:200px;font-family: Arial;margin-top:-8px;" AppendDataBoundItems="True" AutoPostBack="True" 
                                    >
                                    <asp:ListItem Value="0">Select Currency</asp:ListItem>
                                    <asp:ListItem>USD</asp:ListItem>
                                    <asp:ListItem>SGD</asp:ListItem>
                                    </asp:DropDownList>
       </div>
        <div class="row" style="margin-left:5px;width: 80%;margin-bottom:50px;">
                        <div class="col-md-6">
                            <asp:Label ID="lblAmount" runat="server" class="col-md-4" Text="Amount" style="margin-top:15px;margin-left:-3px;"></asp:Label>
                            <asp:TextBox ID="txtAmount" runat="server" class="col-md-2 form-control" style="width:200px;margin-top:9px;margin-left:35px;"></asp:TextBox>

       </div>
        <div class="row" style="margin-left:5px;width: 80%;margin-bottom:20px;">
                        <div class="col-md-6">
                            <asp:Label ID="lblTerm" runat="server" class="col-md-4" Text="Term" style="margin-left:-8px;margin-top:20px;"></asp:Label>
                            <asp:DropDownList ID="ddlTerm" runat="server" class="col-md-2 form-control" 
                                    style="width:200px;margin-top:-29px;margin-left:174px" AppendDataBoundItems="True" AutoPostBack="True" >
                                      <asp:ListItem Value="0">Select Term</asp:ListItem>
                                    <asp:ListItem>1 Month</asp:ListItem>
                                    <asp:ListItem>2 Month</asp:ListItem>
                                    </asp:DropDownList>
                                   
       </div>
        <div class="row" style="margin-left:5px;width: 80%;margin-bottom:20px;">
                        <div class="col-md-6">
                        <asp:Label ID="Label1" runat="server" class="col-md-4" Text="Staff In-Charge" style="margin-left:-15px;margin-top:15px;"></asp:Label>
                        <asp:TextBox ID="txtStaff" runat="server" class="col-md-2 form-control" style="width:200px;margin-top:-45px;margin-left:170px;"></asp:TextBox>

       </div>
       <br />
       <br />
              <table>
        <tr >
                            <td><%--<asp:Label ID="lblDate" runat="server" Text="Date" ReadOnly = "true" style="font-family: Arial;margin-left: 23px;">--%></asp:Label></td>
                            <td colspan="2">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" 
                                    style="font-family: Arial;margin-left:157px;" Width="200px" Height="37px" ReadOnly="True" ontextchanged="TextBox1_TextChanged"></asp:TextBox>  
   
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" ImageUrl="calendar.png" OnClick="ImageButton1_Click" style="margin-left: -12px;margin-top:-67px;" Width="33px" />  
                                <br />  
                                 <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">  
                                     <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />  
                                     <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />  
                                     <OtherMonthDayStyle ForeColor="#CC9966" />  
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />  
                                            <SelectorStyle BackColor="#FFCC66" />  
                                             <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />  
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />  
                                 </asp:Calendar>
                            </td>
                        </tr>
       </table>
         <div class="row">
                      <asp:Button ID="btnSubmit" class="btn-primary col-md-2" runat="server" 
                          Text="Submit"  
                          style="width: 19%;font-weight:bold;margin-left:554px;margin-bottom:20px;" onclick="btnSubmit_Click"  
                          ></asp:Button>
                                     </div>




                          <%--<td><asp:Label ID="lblVesselCode" runat="server" Text="Vessel Code" style="font-family: Arial"></asp:Label></td>
                            <td colspan="2">
                                
                                <asp:DropDownList ID="ddlVesselCode" runat="server" class="form-control" 
                                    style="font-family: Arial" AppendDataBoundItems="True" 
                                    onselectedindexchanged="ddlVesselCode_SelectedIndexChanged" 
                                    AutoPostBack="True">
                                    <asp:ListItem Value="0">Select Vessel Code</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" InitialValue="0" ControlToValidate="ddlVesselCode" runat="server" ErrorMessage="Select Vessel Code"></asp:RequiredFieldValidator>
                                
                            </td>--%>
                          
                    
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

