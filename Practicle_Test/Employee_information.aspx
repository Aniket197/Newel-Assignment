<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_information.aspx.cs" Inherits="Practicle_Test.Employee_information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            margin-right: 30;
        }
        .auto-style3 {
            width: 252px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div id="form">
            <div id="maindv">
                <div id="header">
                    <h1>Employee Information Table</h1>
                </div>
                <div id="table">
                    <table id="emptable" class="auto-style2">
                        <tr class="row">
                            <td class="auto-style1">EMP CODE: </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txt_emp_code" runat="server" Class="textbox"></asp:TextBox> </td>
                        </tr>
                        <tr class="row">
                            <td class="auto-style1">NAME: </td>
                            <td class="auto-style3"> <asp:TextBox ID="txt_emp_name" runat="server" Class="textbox"></asp:TextBox> </td>
                        </tr>
                        <tr class="row">
                            <td class="auto-style1">Department: </td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="DropDownList1" runat="server" Class="textbox">
                                    <asp:ListItem>Please Select Department</asp:ListItem>
                                    <asp:ListItem>HR</asp:ListItem>
                                    <asp:ListItem>Account</asp:ListItem>
                                    <asp:ListItem>Admin</asp:ListItem>
                                    <asp:ListItem>Developer</asp:ListItem>
                                </asp:DropDownList> </td>
                        </tr>
                        <tr class="row">
                            <td class="auto-style1">Gender:</td>
                            <td class="auto-style3">
                                 <asp:RadioButtonList ID="RadioButtonList1" runat="server" Class="textbox" >
                                     <asp:ListItem>Male</asp:ListItem>
                                     <asp:ListItem>Female</asp:ListItem>
                                 </asp:RadioButtonList> 
                                
                            </td>
                        </tr>
                        <tr class="row">
                            <td class="auto-style1">BOD: </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txt_emp_dob" runat="server" TextMode="Date" Class="textbox" ></asp:TextBox> 
                            </td>
                        </tr>
                        <tr class="row">
                            <td class="auto-style1">Joining Date: </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txt_emp_jd" runat="server" TextMode="Date" Class="textbox"></asp:TextBox> </td>
                        </tr>
                        <tr class="row">
                            <td class="auto-style1">Prev Experience: </td>
                            <td class="auto-style3"><asp:TextBox ID="txt_emp_pre_Expe" runat="server" TextMode="Number" Class="textbox"></asp:TextBox>  </td>
                        </tr>
                        <tr class="row">
                            <td class="auto-style1">Salary: </td>
                            <td class="auto-style3"><asp:TextBox ID="txt_emp_salary" runat="server" TextMode="Number" Class="textbox"></asp:TextBox> </td>
                        </tr>
                        <tr class="row">
                            <td class="auto-style1">Address: </td>
                            <td class="auto-style3"><asp:TextBox ID="txt_emp_add" runat="server" TextMode="MultiLine" Class="textbox"></asp:TextBox> </td>
                        </tr>
                        <tr class="row">
                            <td> </td>
                            <td class="auto-style3"> </td>
                        </tr>
                        <tr class="row">
                            <td> <asp:Label ID="Label1" runat="server" Text="Label" Class="textbox"></asp:Label></td>
                            <td class="auto-style3"> </td>
                        </tr>
                        <tr class="row">
                            <td> </td>
                            <td class="auto-style3"> </td>
                        </tr>
                        <tr class="row">
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" /> </td>
                            <td class="auto-style3"><asp:Button ID="Button2" runat="server" Text="Cancle" OnClick="Button2_Click" /> </td>
                        </tr>
                        <tr class="row">
                            <td> </td>
                            <td class="auto-style3"> </td>
                        </tr>

                    </table>
                </div>
                <div id="gridview">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Emp_Code" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Emp_Code" HeaderText="Emp_Code" ReadOnly="True" SortExpression="Emp_Code" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" DataFormatString="{0:mm/dd/yyyy}" />
                        <asp:BoundField DataField="Joining_Date" HeaderText="Joining_Date" SortExpression="Joining_Date" DataFormatString="{0:mm/dd/yyyy}" />
                        <asp:BoundField DataField="Pre_Experience" HeaderText="Pre_Experience" SortExpression="Pre_Experience" />
                        <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
               
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HR_TestConnectionString %>" SelectCommand="SELECT * FROM [Employee_Record]"  UpdateCommand="UPDATE [Employee_Record] SET Name=@name,  Department=@Department, Gender=@Gender , DOB=@DOB , Joining_Date=@Joining_Date , Pre_Experience=@Pre_Experience , Salary=@Salary , Address=@Address WHERE Emp_Code=@Emp_Code"></asp:SqlDataSource>

             </div>
                 
            </div>
        </div>
     
     
    </form>
</body>
</html>
