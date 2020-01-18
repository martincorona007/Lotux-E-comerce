<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_singup_user_1.aspx.cs" Inherits="web_example.Web_Pages.User.page_singup_user_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <div class="section-title">
            <h1>Sing Up</h1>
            <div class="pick">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Styles/Pictures/p2.PNG"  />
            </div>
        </div>
    </header> 
    <article class="a1">
        <section>
            <div>
                                   
                               
                               <div class="form-row">
                                   <div class="form-group col-md-6">
                                        <asp:Label ID="lbl_first_name" runat="server" Text="First Name"></asp:Label>
                                        <asp:TextBox ID="txt_first_name" class="form-control" placeholder="Enter First name" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_first_name" runat="server" ControlToValidate="txt_first_name" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                   </div>
                                   <div class="form-group col-md-6">
                                       <asp:Label ID="lbl_last_name" runat="server" Text="Last Name"></asp:Label>
                                       <asp:TextBox ID="txt_last_name" class="form-control" placeholder="Enter Last name" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_last_name" runat="server" ControlToValidate="txt_last_name" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                              
                                   </div>
                                   <div class="form-group col-md-6">
                                       <asp:Label ID="lbl_country" runat="server" Text="Contry"></asp:Label>
                                       <asp:DropDownList ID="DDL_country" class="form-control"  runat="server" AutoPostBack="True" OnSelectedIndexChanged="SelectedIndex_Changed" DataTextField="countryName"  DataValueField="countryName">
                                           <asp:ListItem Value="0">Select</asp:ListItem>
                                                    <asp:ListItem  >Afghanistan</asp:ListItem>
                                                    <asp:ListItem>Albania</asp:ListItem>
                                                    <asp:ListItem>Armenia</asp:ListItem>
                                                    <asp:ListItem>Andorra</asp:ListItem>
                                                    <asp:ListItem>Angola</asp:ListItem>
                                                    <asp:ListItem>Anguila</asp:ListItem>
                                                    <asp:ListItem>Antigua</asp:ListItem>
                                                    <asp:ListItem>Arabia Saudí</asp:ListItem>
                                                    <asp:ListItem>Argeria</asp:ListItem>
                                                    <asp:ListItem>Argentina</asp:ListItem>
                                                    <asp:ListItem>Armenia</asp:ListItem>
                                                    <asp:ListItem>Aruba</asp:ListItem>
                                                    <asp:ListItem>Australia</asp:ListItem>
                                                    <asp:ListItem>Austria</asp:ListItem>
                                                    <asp:ListItem>Azerbaijan</asp:ListItem>
                                                    <asp:ListItem>Bahamas</asp:ListItem>
                                                    <asp:ListItem>Bangladesh</asp:ListItem>
                                                    <asp:ListItem>Barbados</asp:ListItem>
                                                    <asp:ListItem>Belarus</asp:ListItem>
                                                    <asp:ListItem>Belgium</asp:ListItem>
                                                    <asp:ListItem>Belize</asp:ListItem>
                                                    <asp:ListItem>Benin</asp:ListItem>
                                                    <asp:ListItem>Bermuda</asp:ListItem>
                                                    <asp:ListItem>Bhutan</asp:ListItem>
                                                    <asp:ListItem>Bolivia</asp:ListItem>
                                                    <asp:ListItem>Bosnia & Herzegovia</asp:ListItem>
                                                    <asp:ListItem>Botswana</asp:ListItem>
                                                    <asp:ListItem>Brazil</asp:ListItem>
                                                    <asp:ListItem>British Indian Ocean Territory</asp:ListItem>
                                                    <asp:ListItem>British Virgin Islands</asp:ListItem>
                                                    <asp:ListItem>Brunei</asp:ListItem>
                                                    <asp:ListItem>Bulgaria</asp:ListItem>
                                                    <asp:ListItem>Burkina Faso</asp:ListItem>
                                                    <asp:ListItem>Burundi</asp:ListItem>
                                                    <asp:ListItem>Cambodia</asp:ListItem>
                                                    <asp:ListItem>Cameroon</asp:ListItem>
                                                    <asp:ListItem>Canada</asp:ListItem>
                                                    <asp:ListItem>Cape Verde</asp:ListItem>
                                                    <asp:ListItem>Caribbean Netherlands</asp:ListItem>
                                                    <asp:ListItem>Cayman Islands</asp:ListItem>
                                                    <asp:ListItem>Central African Republic</asp:ListItem>
                                                    <asp:ListItem>Chad</asp:ListItem>
                                                    <asp:ListItem>Chile</asp:ListItem>
                                                    <asp:ListItem>China</asp:ListItem>
                                                    <asp:ListItem>Colombia</asp:ListItem>
                                                    <asp:ListItem>Comoros</asp:ListItem>
                                                    <asp:ListItem>Congo - Brazzaville</asp:ListItem>
                                                    <asp:ListItem>Congo - Kinshasa</asp:ListItem>
                                                    <asp:ListItem>Cook Islands</asp:ListItem>
                                                    <asp:ListItem>Costa Rica</asp:ListItem>
                                                    <asp:ListItem>Cote d'Ivoire</asp:ListItem>
                                                    <asp:ListItem>Croatia</asp:ListItem>
                                                    <asp:ListItem>Cuba</asp:ListItem>
                                                    <asp:ListItem>Curacao</asp:ListItem>
                                                    <asp:ListItem>Cyprus</asp:ListItem>
                                                    <asp:ListItem>Czechia</asp:ListItem>
                                                    <asp:ListItem>Denmark</asp:ListItem>
                                                    <asp:ListItem>Djibouti</asp:ListItem>
                                                    <asp:ListItem>Dominica</asp:ListItem>
                                                    <asp:ListItem>Dominican Republic</asp:ListItem>
                                                    <asp:ListItem>Ecuador</asp:ListItem>
                                                    <asp:ListItem>Egypt</asp:ListItem>
                                                    <asp:ListItem>El Salvador</asp:ListItem>
                                                    <asp:ListItem>Equatorial Guinea</asp:ListItem>
                                                    <asp:ListItem>Eritrea</asp:ListItem>
                                                    <asp:ListItem>Estonia</asp:ListItem>
                                                    <asp:ListItem>Falkland Islands (Islas Malvinas)</asp:ListItem>
                                                    <asp:ListItem>Faroe Islands</asp:ListItem>
                                                    <asp:ListItem>Fiji</asp:ListItem>
                                                    <asp:ListItem>Finland</asp:ListItem>
                                                    <asp:ListItem>France</asp:ListItem>
                                                    <asp:ListItem>French Guiana</asp:ListItem>
                                                    <asp:ListItem>French Polynesia</asp:ListItem>
                                                    <asp:ListItem>Gabon</asp:ListItem>
                                                    <asp:ListItem>Gambia</asp:ListItem>
                                                    <asp:ListItem>Georgia</asp:ListItem>
                                                    <asp:ListItem>Germany</asp:ListItem>
                                                    <asp:ListItem>Ghana</asp:ListItem>
                                                    <asp:ListItem>Gibraltar</asp:ListItem>
                                                    <asp:ListItem>Greece</asp:ListItem>
                                                    <asp:ListItem>Greenland</asp:ListItem>
                                                    <asp:ListItem>Grenada</asp:ListItem>
                                                    <asp:ListItem>Guadeloupe</asp:ListItem>
                                                    <asp:ListItem>Guam</asp:ListItem>
                                                    <asp:ListItem>Guatemala</asp:ListItem>
                                                    <asp:ListItem>Guinea</asp:ListItem>
                                                    <asp:ListItem>Guinea-Bissau</asp:ListItem>
                                                    <asp:ListItem>Guyana</asp:ListItem>
                                                    <asp:ListItem>Haiti</asp:ListItem>
                                                    <asp:ListItem>Honduras</asp:ListItem>
                                                    <asp:ListItem>Hong Kong</asp:ListItem>
                                                    <asp:ListItem>Hungary</asp:ListItem>
                                                    <asp:ListItem>Iceland</asp:ListItem>
                                                    <asp:ListItem>India</asp:ListItem>
                                                    <asp:ListItem>indonesia</asp:ListItem>
                                                    <asp:ListItem>Iran</asp:ListItem>
                                                    <asp:ListItem>Iraq</asp:ListItem>
                                                    <asp:ListItem>Ireland</asp:ListItem>
                                                    <asp:ListItem>Israel</asp:ListItem>
                                                    <asp:ListItem>Italy</asp:ListItem>
                                                    <asp:ListItem>Jamaica</asp:ListItem>
                                                    <asp:ListItem>Japan</asp:ListItem>
                                                    <asp:ListItem>Jordan</asp:ListItem>
                                                    <asp:ListItem>Kazakhstan</asp:ListItem>
                                                    <asp:ListItem>Kenya</asp:ListItem>
                                                    <asp:ListItem>Kiribati</asp:ListItem>
                                                    <asp:ListItem>Kosovo</asp:ListItem>
                                                    <asp:ListItem>Kuwait</asp:ListItem>
                                                    <asp:ListItem>Kyrgyzstan</asp:ListItem>
                                                    <asp:ListItem>Laos</asp:ListItem>
                                                    <asp:ListItem>Latvia</asp:ListItem>
                                                    <asp:ListItem>Lebanon</asp:ListItem>
                                                    <asp:ListItem>Lesotho</asp:ListItem>
                                                    <asp:ListItem>Liberia</asp:ListItem>
                                                    <asp:ListItem>Libya</asp:ListItem>
                                                    <asp:ListItem>Liechtenstein</asp:ListItem>
                                                    <asp:ListItem>Lithuania</asp:ListItem>
                                                    <asp:ListItem>Luxembourg</asp:ListItem>
                                                    <asp:ListItem>Macau</asp:ListItem>
                                                    <asp:ListItem>Mecedonia (FYROM)</asp:ListItem>
                                                    <asp:ListItem>Madagascar</asp:ListItem>
                                                    <asp:ListItem>Malawi</asp:ListItem>
                                                    <asp:ListItem>Maldives</asp:ListItem>
                                                    <asp:ListItem>Mali</asp:ListItem>
                                                    <asp:ListItem>Malta</asp:ListItem>
                                                    <asp:ListItem>Marshall Islands</asp:ListItem>
                                                    <asp:ListItem>Martinique</asp:ListItem>
                                                    <asp:ListItem>Mauritania</asp:ListItem>
                                                    <asp:ListItem>Mauritius</asp:ListItem>
                                                    <asp:ListItem>Mexico</asp:ListItem>
                                                    <asp:ListItem>Micronesia</asp:ListItem>
                                                    <asp:ListItem>Moldova</asp:ListItem>
                                                    <asp:ListItem>Monaco</asp:ListItem>
                                                    <asp:ListItem>Mongolia</asp:ListItem>
                                                    <asp:ListItem>Montenegro</asp:ListItem>
                                                    <asp:ListItem>Montserrat</asp:ListItem>
                                                    <asp:ListItem>Morocco</asp:ListItem>
                                                    <asp:ListItem>Mozambique</asp:ListItem>
                                                    <asp:ListItem>Myanmar (Burma)</asp:ListItem>
                                                    <asp:ListItem>Namibia</asp:ListItem>
                                                    <asp:ListItem>Nauru</asp:ListItem>
                                                    <asp:ListItem>Nepal</asp:ListItem>
                                                    <asp:ListItem>Netherlands</asp:ListItem>
                                                    <asp:ListItem>New Caledonia</asp:ListItem>
                                                    <asp:ListItem>New Zealand</asp:ListItem>
                                                    <asp:ListItem>Nicaragua</asp:ListItem>
                                                    <asp:ListItem>Niger</asp:ListItem>
                                                    <asp:ListItem>Nigeria</asp:ListItem>
                                                    <asp:ListItem>Niue</asp:ListItem>
                                                    <asp:ListItem>Norfolk Island</asp:ListItem>
                                                    <asp:ListItem>North Korea</asp:ListItem>
                                                    <asp:ListItem>Northern Mariana Islands</asp:ListItem>
                                                    <asp:ListItem>Norway</asp:ListItem>
                                                    <asp:ListItem>Oman</asp:ListItem>
                                                    <asp:ListItem>Pakistan</asp:ListItem>
                                                    <asp:ListItem>Palau</asp:ListItem>
                                                    <asp:ListItem>Palestine</asp:ListItem>
                                                    <asp:ListItem>Panama</asp:ListItem>
                                                    <asp:ListItem>Papua New Guinea</asp:ListItem>
                                                    <asp:ListItem>Paraguay</asp:ListItem>
                                                    <asp:ListItem>Peru</asp:ListItem>
                                                    <asp:ListItem>Philippines</asp:ListItem>
                                                    <asp:ListItem>Poland</asp:ListItem>
                                                    <asp:ListItem>Puerto Rico</asp:ListItem>
                                                    <asp:ListItem>Qatar</asp:ListItem>
                                                    <asp:ListItem>Réunion</asp:ListItem>
                                                    <asp:ListItem>Romania</asp:ListItem>
                                                    <asp:ListItem>Russia</asp:ListItem>
                                                    <asp:ListItem>Rwanda</asp:ListItem>
                                                    <asp:ListItem>Samoa</asp:ListItem>
                                                    <asp:ListItem>San Marino</asp:ListItem>
                                                    <asp:ListItem>Sao Tomé & Príncipe</asp:ListItem>
                                                    <asp:ListItem>Saudi Arabia</asp:ListItem>
                                                    <asp:ListItem>Senegal</asp:ListItem>
                                                    <asp:ListItem>Serbia</asp:ListItem>
                                                    <asp:ListItem>Seychelles</asp:ListItem>
                                                    <asp:ListItem>Sierra Leone</asp:ListItem>
                                                    <asp:ListItem>Singapore</asp:ListItem>
                                                    <asp:ListItem>Sint Maarten</asp:ListItem>
                                                    <asp:ListItem>Slovakia</asp:ListItem>
                                                    <asp:ListItem>Slovenia</asp:ListItem>
                                                    <asp:ListItem>Solomon Islands</asp:ListItem>
                                                    <asp:ListItem>Somalia</asp:ListItem>
                                                    <asp:ListItem>South Africa</asp:ListItem>
                                                    <asp:ListItem>South Korea</asp:ListItem>
                                                    <asp:ListItem>South Sudan</asp:ListItem>
                                                    <asp:ListItem>Spain</asp:ListItem>
                                                    <asp:ListItem>Sri Lanka</asp:ListItem>
                                                    <asp:ListItem>St. Barthélemy</asp:ListItem>
                                                    <asp:ListItem>St. Helena</asp:ListItem>
                                                    <asp:ListItem>St. Kitts & Nevis</asp:ListItem>
                                                    <asp:ListItem>St. Lucia</asp:ListItem>
                                                    <asp:ListItem>St. Martin</asp:ListItem>
                                                    <asp:ListItem>St. Pierre & Miquelon</asp:ListItem>
                                                    <asp:ListItem>St. Vincent & Grenadies</asp:ListItem>
                                                    <asp:ListItem>Sudan</asp:ListItem>
                                                    <asp:ListItem>Suriname</asp:ListItem>
                                                    <asp:ListItem>Swaziland</asp:ListItem>
                                                    <asp:ListItem>Sweden</asp:ListItem>
                                                    <asp:ListItem>Switzerland</asp:ListItem>
                                                    <asp:ListItem>Syria</asp:ListItem>
                                                    <asp:ListItem>Taiwan</asp:ListItem>
                                                    <asp:ListItem>Tajikistan</asp:ListItem>
                                                    <asp:ListItem>Tanzania</asp:ListItem>
                                                    <asp:ListItem>Thailand</asp:ListItem>
                                                    <asp:ListItem>Timor-Leste</asp:ListItem>
                                                    <asp:ListItem>Togo</asp:ListItem>
                                                    <asp:ListItem>Tokelau</asp:ListItem>
                                                    <asp:ListItem>Tonga</asp:ListItem>
                                                    <asp:ListItem>Trinidad & Tobago</asp:ListItem>
                                                    <asp:ListItem>Tunisia</asp:ListItem>
                                                    <asp:ListItem>Turkey</asp:ListItem>
                                                    <asp:ListItem>Turkmenistan</asp:ListItem>
                                                    <asp:ListItem>Turks & Caicos Islands</asp:ListItem>
                                                    <asp:ListItem>Tuvalu</asp:ListItem>
                                                    <asp:ListItem>U.S. Virgin Islands</asp:ListItem>
                                                    <asp:ListItem>Uganda</asp:ListItem>
                                                    <asp:ListItem>Ukraine</asp:ListItem>
                                                    <asp:ListItem>United Arab Emirates</asp:ListItem>
                                                    <asp:ListItem>United Kingdom</asp:ListItem>
                                                    <asp:ListItem>United States</asp:ListItem>
                                                    <asp:ListItem>Uruguay</asp:ListItem>
                                                    <asp:ListItem>Uzbekistan</asp:ListItem>
                                                    <asp:ListItem>Vanuatu</asp:ListItem>
                                                    <asp:ListItem>Vatican City</asp:ListItem>
                                                    <asp:ListItem>Venezuela</asp:ListItem>
                                                    <asp:ListItem>Vietnam</asp:ListItem>
                                                    <asp:ListItem>Wallis & Futuna</asp:ListItem>
                                                    <asp:ListItem>Yemen</asp:ListItem>
                                                    <asp:ListItem>Zambia</asp:ListItem>
                                                    <asp:ListItem>Zimbabwe</asp:ListItem>

                                       </asp:DropDownList>
                                       <asp:RequiredFieldValidator ID="RFV_country" runat="server" ControlToValidate="DDL_country" ErrorMessage="Please select country"  Font-Bold="True" ForeColor="Red" InitialValue="0" ></asp:RequiredFieldValidator>
                              
                                   </div>
                                    <div class="form-group col-md-6">
                                       <asp:Label ID="lbl_city" runat="server" Text="City"></asp:Label>
                                         <asp:TextBox ID="txt_city" class="form-control" placeholder="Enter City"  runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RFV_city" runat="server" ControlToValidate="txt_city" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                              
                                    </div>
                                    <div class="form-group col-md-6">
                                       <asp:Label ID="lbl_cell_phone" runat="server" Text="Cell Phone"></asp:Label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">+<asp:Label ID="lbl_lada" runat="server" Text=""></asp:Label></div>
                                            </div>
                                            <asp:TextBox ID="txt_cell_phone" class="form-control inlineFormInputGroupUsername" placeholder="Enter Cell Phone" runat="server"></asp:TextBox>
                                              
                                        </div>
                                        <asp:RequiredFieldValidator ID="RFV_cell_phone" runat="server" ControlToValidate="txt_cell_phone" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_cell_phone" ErrorMessage="Error cell phone" Font-Bold="True" ForeColor="Red" ValidationExpression="^[0-9]{11}$"></asp:RegularExpressionValidator>
                                        </div>
                                    <div class="form-group col-md-6">
                                        <asp:Label ID="lbl_zip_code" runat="server" Text="Zip Code"></asp:Label>
                                        <asp:TextBox ID="txt_zipcode" class="form-control" placeholder="Enter Zip Code" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_zipcode" runat="server" ControlToValidate="txt_zipcode" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                              
                                    </div>
                               </div>
                               <div class="form-group col-md-12">
                                        <asp:Label ID="lbl_address" runat="server" Text="Address"></asp:Label>
                                        <asp:TextBox ID="txt_address" class="form-control" placeholder="Enter Address" TextMode="MultiLine" Rows="2" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_address" runat="server" ControlToValidate="txt_address" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                              
                               </div>
                                <div class="alinear">
                                     <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Next" OnClick="Button1_Click" />
                                </div>
            
            </div>
        </section>
    </article>
    
    
    
    
</asp:Content>
