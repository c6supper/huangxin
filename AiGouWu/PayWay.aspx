<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayWay.aspx.cs" Inherits="AiGouWu.PayWay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
      <form id="form1" runat="server">
    <div>
        &nbsp;</div>
        &nbsp; &nbsp;&nbsp;
        <table style="width :633px; height :396px; background-image: url(images/bank.jpg); background-repeat :no-repeat" align =center >
            <tr>
                <td style="width: 363px;" >
                </td>
                <td style=" width: 270px;height: 100px" valign =bottom>
                     &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/gsyh.jpg" OnClick="ImageButton1_Click" /></td>
                
            </tr>
              <tr>
                <td style="width: 363px;" >
                </td>
                <td style="width: 270px;height: 56px"valign =bottom  align =center >
                    &nbsp; &nbsp; &nbsp; &nbsp;
                  
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/nyyh.jpg" OnClick="ImageButton3_Click" /></td>
               
            </tr>
            <tr>
                <td style="width: 363px;" >
                </td>
                <td style="width: 270px;height: 56px"valign =bottom align =center >
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                   
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/jtyh.jpg" OnClick="ImageButton4_Click" /></td>
               
            </tr>
            <tr >
                <td style="width: 363px; ">
                </td>
                <td style="width: 270px; height: 57px;" valign =bottom  align =center    >
                   <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/jsyh.jpg" OnClick="ImageButton2_Click" /></td>
                
            </tr>
            <tr>
                <td style="width: 363px;" >
                </td>
                <td style="width: 270px;height: 61px "valign =bottom>
                  
                   <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/shpdyh.jpg" OnClick="ImageButton5_Click" /></td>
                
            </tr>
            <tr>
                <td style="width: 363px">
                </td>
                <td style="width: 270px;height: 45px" valign="bottom">
                </td>
            </tr>
          
        </table>
    </form>
</body>
</html>
