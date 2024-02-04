<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="std_reg.aspx.cs" Inherits="asp.netexample.std_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="main-content">
        <section id="wrapper">
            <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        <div class="col-md-4 col-md-offset-4">
                            <h1>Student Registration</h1>
                       </div>
                    </header>

                        <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label Text="Student Name" runat="server" />
                                    <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Student Name" />
                                </div>
                            </div>
                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label Text="Father Name" runat="server" />
                                    <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" 
                                        placeholder="Father Name" />
                                </div>
                             </div>
                           </div>

                        <div class="row">
                             <div class="col-md-4 col-md-offset-1">
                                <div class="form-group">
                                    <asp:Label Text="DOB" runat="server" />
                                    <asp:TextBox runat="server" Enabled="true" 
                                        TextMode="Date" CssClass="form-control input-sm" placeholder="DOB" />
                                </div>
                             </div>

                            <div class="col-md-4 col-md-offset-1">
                                <div class="form-group dropdown">
                                    <asp:Label Text="Region" runat="server" />
                                    <br />
                                    <asp:DropDownList  runat="server">
                                        <asp:ListItem Text="Delhi" />
                                        <asp:ListItem Text="Pune" />
                                        <asp:ListItem Text="Goa" />
                                        <asp:ListItem Text="Punjab" />
                                        <asp:ListItem Text="Mumbai" />
                                        <asp:ListItem Text="Himachal Pardesh" />
                                     </asp:DropDownList>
                                 </div>
                             </div>
                        </div>
                              
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <div class="form-group">
                                <asp:Label Text="Address" runat="server" />
                                <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Address" />
                            </div>
                        </div>
                        <div class="col-md-4 col-md-offset-1">
                            <div class="form-group">
                                <asp:Label Text="Phone Number" runat="server" />
                                <asp:TextBox runat="server" Enabled="true" TextMode="Phone" CssClass="form-control input-sm" placeholder="Phone Number" />
                            </div>
                        </div>
                   </div>

                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <div class="form-group">
                                <div>
                                    Gender
                                </div>
                                <label class="radio-inline">
                                    <input type="radio" name="Male" /> Male
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="Female" /> Female
                                </label>
                            </div>
                        </div>
                          <div class="col-md-4 col-md-offset-1">
                              <div class="form-group">
                                  <asp:Label Text="Course" runat="server" />
                                  <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="course" />
                              </div>
                          </div>
                    </div>

                   <div class="row">
                       <div class="col-md-8 col-md-offset-2">
                          <asp:Button Text="Save" ID="btnsave" CssClass="btn btn-primary" Width="170px" runat="server" />
                           <asp:Button Text="Update" ID="Button1" CssClass="btn btn-primary" Width="170px" runat="server" />
                           <asp:Button Text="Delete" ID="Button2" CssClass="btn btn-danger" Width="170px" runat="server" />
                       </div>
                   </div>


                               
                             
                           





                  

                </section>
            </div>
          </div>
        </section>
    </section>






</asp:Content>
