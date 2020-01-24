<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_profile_user.aspx.cs" Inherits="web_example.Web_Pages.User.page_profile_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <header>
        <div class="section-title">
            <h1>Your Profile</h1>
            <div class="pick">
                <asp:Image ID="pro1" runat="server" ImageUrl="~/Styles/Pictures/user.png" />
            </div>
        </div>
    </header>
    <article class="a1">
        <section>
            <div>
                      <div class="row">
                           <div class="col">
                               <div class="form-row">
                                   <div class="form-group col-sm">
                                    <asp:Label ID="lbl_first_name" runat="server" Text="First Name"></asp:Label>
                                    <asp:TextBox ID="txt_first_name" class="form-control" placeholder="Enter First name" runat="server"></asp:TextBox>
                                  </div>
                               <div class="form-group col-sm">
                                   <asp:Label ID="lbl_last_name" runat="server" Text="Last Name"></asp:Label>
                                   <asp:TextBox ID="txt_last_name" class="form-control" placeholder="Enter Last name" runat="server"></asp:TextBox>
                                  
                               </div>
                               <div class="form-group col-sm">
                                            <asp:Label ID="lbl_country" runat="server" Text="Contry"></asp:Label>
                                       <asp:DropDownList ID="DDL_country" class="form-control"  runat="server" AutoPostBack="True" OnSelectedIndexChanged="SelectedIndex_Changed" DataTextField="countryName"  DataValueField="countryName">
                                           <asp:ListItem Value="0">Select</asp:ListItem>
                                                    <asp:ListItem Value="Afghanistan" Text="Afghanistan"/>
                                                    <asp:ListItem Value="Albania" Text="Albania"/>
                                                    <asp:ListItem Value="Armenia" Text="Armenia"/>
                                                    <asp:ListItem Value="Andorra" Text="Andorra"/>
                                                    <asp:ListItem Value="Angola" Text="Angola"/>
                                                    <asp:ListItem Value="Anguila" Text="Anguila"/>
                                                    <asp:ListItem Value="Antigua" Text="Antigua"/>
                                                    <asp:ListItem Value="Arabia Saudí" Text="Arabia Saudí"/>
                                                    <asp:ListItem Value="Argeria" Text="Argeria" />
                                                    <asp:ListItem Value="Argentina" Text="Argentina"/>
                                                    <asp:ListItem Value="Armenia" Text="Armenia"/>
                                                    <asp:ListItem Value="Aruba" Text="Aruba"/>
                                                    <asp:ListItem Value="Australia" Text="Australia"/>
                                                    <asp:ListItem Value="Austria" Text="Austria"/>
                                                    <asp:ListItem Value="Azerbaijan" Text="Azerbaijan"/>
                                                    <asp:ListItem Value="Bahamas" Text="Bahamas"/>
                                                    <asp:ListItem Value="Bangladesh" Text="Bangladesh"/>
                                                    <asp:ListItem Value="Barbados" Text="Barbados"/>
                                                    <asp:ListItem Value="Belarus" Text="Belarus"/>
                                                    <asp:ListItem Value="Belgium" Text="Belgium"/>
                                                    <asp:ListItem Value="Belize" Text="Belize"/>
                                                    <asp:ListItem Value="Benin" Text="Benin"/>
                                                    <asp:ListItem Value="Bermuda" Text="Bermuda"/>
                                                    <asp:ListItem Value="Bhutan" Text="Bhutan"/>
                                                    <asp:ListItem Value="Bolivia" Text="Bolivia"/>
                                                    <asp:ListItem Value="Bosnia & Herzegovia" Text="Bosnia & Herzegovia"/>
                                                    <asp:ListItem Value="Botswana" Text="Botswana"/>
                                                    <asp:ListItem Value="Brazil" Text="Brazil"/>
                                                    <asp:ListItem Value="British Indian Ocean Territory" Text="British Indian Ocean Territory"/>
                                                    <asp:ListItem Value="British Virgin Islands" Text="British Virgin Islands"/>
                                                    <asp:ListItem Value="Brunei" Text="Brunei"/>
                                                    <asp:ListItem Value="Bulgaria" Text="Bulgaria"/>
                                                    <asp:ListItem Value="Burkina Faso" Text="Burkina Faso"/>
                                                    <asp:ListItem Value="Burundi" Text="Burundi"/>
                                                    <asp:ListItem Value="Cambodia" Text="Cambodia"/>
                                                    <asp:ListItem Value="Cameroon" Text="Cameroon"/>
                                                    <asp:ListItem Value="Canada" Text="Canada"/>
                                                    <asp:ListItem Value="Cape Verde" Text="Cape Verde"/>
                                                    <asp:ListItem Value="Caribbean Netherlands" Text="Caribbean Netherlands"/>
                                                    <asp:ListItem Value="Cayman Islands" Text="Cayman Islands"/>
                                                    <asp:ListItem Value="Central African Republic" Text="Central African Republic"/>
                                                    <asp:ListItem Value="Chad" Text="Chad"/>
                                                    <asp:ListItem Value="Chile" Text="Chile"/>
                                                    <asp:ListItem Value="China" Text="China"/>
                                                    <asp:ListItem Value="Colombia" Text="Colombia"/>
                                                    <asp:ListItem Value="Comoros" Text="Comoros"/>
                                                    <asp:ListItem Value="Congo - Brazzaville" Text="Congo - Brazzaville"/>
                                                    <asp:ListItem Value="Congo - Kinshasa" Text="Congo - Kinshasa"/>
                                                    <asp:ListItem Value="Cook Islands" Text="Cook Islands"/>
                                                    <asp:ListItem Value="Costa Rica" Text="Costa Rica"/>
                                                    <asp:ListItem Value="Cote d'Ivoire" Text="Cote d'Ivoire"/>
                                                    <asp:ListItem Value="Croatia" Text="Croatia"/>
                                                    <asp:ListItem Value="Cuba" Text="Cuba"/>
                                                    <asp:ListItem Value="Curacao" Text="Curacao"/>
                                                    <asp:ListItem Value="Cyprus" Text="Cyprus"/>
                                                    <asp:ListItem Value="Czechia" Text="Czechia"/>
                                                    <asp:ListItem Value="Denmark" Text="Denmark"/>
                                                    <asp:ListItem Value="Djibouti" Text="Djibouti"/>
                                                    <asp:ListItem Value="Dominica" Text="Dominica"/>
                                                    <asp:ListItem Value="Dominican Republic" Text="Dominican Republic"/>
                                                    <asp:ListItem Value="Ecuador" Text="Ecuador"/>
                                                    <asp:ListItem Value="Egypt" Text="Egypt"/>
                                                    <asp:ListItem Value="El Salvador" Text="El Salvador"/>
                                                    <asp:ListItem Value="Equatorial Guinea" Text="Equatorial Guinea"/>
                                                    <asp:ListItem Value="Eritrea" Text="Eritrea"/>
                                                    <asp:ListItem Value="Estonia" Text="Estonia"/>
                                                    <asp:ListItem Value="Falkland Islands (Islas Malvinas)" Text="Falkland Islands (Islas Malvinas)"/>
                                                    <asp:ListItem Value="Faroe Islands" Text="Faroe Islands"/>
                                                    <asp:ListItem Value="Fiji" Text="Fiji"/>
                                                    <asp:ListItem Value="Finland" Text="Finland"/>
                                                    <asp:ListItem Value="France" Text="France"/>
                                                    <asp:ListItem Value="French Guiana" Text="French Guiana"/>
                                                    <asp:ListItem Value="French PFolynesia" Text="French Polynesia"/>
                                                    <asp:ListItem Value="Gabon" Text="Gabon"/>
                                                    <asp:ListItem Value="Gambia" Text="Gambia"/>
                                                    <asp:ListItem Value="Georgia" Text="Georgia"/>
                                                    <asp:ListItem Value="Germany" Text="Germany"/>
                                                    <asp:ListItem Value="Ghana" Text="Ghana"/>
                                                    <asp:ListItem Value="Gibraltar" Text="Gibraltar"/>
                                                    <asp:ListItem Value="Greece" Text="Greece"/>
                                                    <asp:ListItem Value="Greenland" Text="Greenland"/>
                                                    <asp:ListItem Value="Grenada" Text="Grenada"/>
                                                    <asp:ListItem Value="Guadeloupe" Text="Guadeloupe"/>
                                                    <asp:ListItem Value="Guam" Text="Guam"/>
                                                    <asp:ListItem Value="Guatemala" Text="Guatemala"/>
                                                    <asp:ListItem Value="Guinea" Text="Guinea"/>
                                                    <asp:ListItem Value="Guinea-Bissau" Text="Guinea-Bissau"/>
                                                    <asp:ListItem Value="Guyana" Text="Guyana"/>
                                                    <asp:ListItem Value="Haiti" Text="Haiti"/>
                                                    <asp:ListItem Value="Honduras" Text="Honduras"/>
                                                    <asp:ListItem Value="Hong Kong" Text="Hong Kong"/>
                                                    <asp:ListItem Value="Hungary" Text="Hungary"/>
                                                    <asp:ListItem Value="Iceland" Text="Iceland"/>
                                                    <asp:ListItem Value="India" Text="India"/>
                                                    <asp:ListItem Value="indonesia" Text="indonesia"/>
                                                    <asp:ListItem Value="Iran" Text="Iran"/>
                                                    <asp:ListItem Value="Iraq" Text="Iraq"/>
                                                    <asp:ListItem Value="Ireland" Text="Ireland"/>
                                                    <asp:ListItem Value="Israel" Text="Israel"/>
                                                    <asp:ListItem Value="Italy" Text="Italy"/>
                                                    <asp:ListItem Value="Jamaica" Text="Jamaica"/>
                                                    <asp:ListItem Value="Japan" Text="Japan"/>
                                                    <asp:ListItem Value="Jordan" Text="Jordan"/>
                                                    <asp:ListItem Value="Kazakhstan" Text="Kazakhstan"/>
                                                    <asp:ListItem Value="Kenya" Text="Kenya"/>
                                                    <asp:ListItem Value="Kiribati" Text="Kiribati"/>
                                                    <asp:ListItem Value="Kosovo" Text="Kosovo"/>
                                                    <asp:ListItem Value="Kuwait" Text="Kuwait"/>
                                                    <asp:ListItem Value="Kyrgyzstan" Text="Kyrgyzstan"/>
                                                    <asp:ListItem Value="Laos" Text="Laos"/>
                                                    <asp:ListItem Value="Latvia" Text="Latvia"/>
                                                    <asp:ListItem Value="Lebanon" Text="Lebanon"/>
                                                    <asp:ListItem Value="Lesotho" Text="Lesotho"/>
                                                    <asp:ListItem Value="Liberia" Text="Liberia"/>
                                                    <asp:ListItem Value="Libya" Text="Libya"/>
                                                    <asp:ListItem Value="Liechtenstein" Text="Liechtenstein"/>
                                                    <asp:ListItem Value="Lithuania" Text="Lithuania"/>
                                                    <asp:ListItem Value="Luxembourg" Text="Luxembourg"/>
                                                    <asp:ListItem Value="Macau" Text="Macau"/>
                                                    <asp:ListItem Value="Mecedonia (FYROM)" Text="Mecedonia (FYROM)"/>
                                                    <asp:ListItem Value="Madagascar" Text="Madagascar"/>
                                                    <asp:ListItem Value="Malawi" Text="Malawi"/>
                                                    <asp:ListItem Value="Maldives" Text="Maldives"/>
                                                    <asp:ListItem Value="Mali" Text="Mali"/>
                                                    <asp:ListItem Value="Malta" Text="Malta"/>
                                                    <asp:ListItem Value="Marshall Islands" Text="Marshall Islands"/>
                                                    <asp:ListItem Value="Martinique" Text="Martinique"/>
                                                    <asp:ListItem Value="Mauritania" Text="Mauritania"/>
                                                    <asp:ListItem Value="Mauritius" Text="Mauritius"/>
                                                    <asp:ListItem Value="Mexico" Text="Mexico"/>
                                                    <asp:ListItem Value="Micronesia" Text="Micronesia"/>
                                                    <asp:ListItem Value="Moldova" Text="Moldova"/>
                                                    <asp:ListItem Value="Monaco" Text="Monaco"/>
                                                    <asp:ListItem Value="Mongolia" Text="Mongolia"/>
                                                    <asp:ListItem Value="Montenegro" Text="Montenegro"/>
                                                    <asp:ListItem Value="Montserrat" Text="Montserrat"/>
                                                    <asp:ListItem Value="Morocco" Text="Morocco"/>
                                                    <asp:ListItem Value="Mozambique" Text="Mozambique"/>
                                                    <asp:ListItem Value="Myanmar (Burma)" Text="Myanmar (Burma)"/>
                                                    <asp:ListItem Value="Namibia" Text="Namibia"/>
                                                    <asp:ListItem Value="Nauru" Text="Nauru"/>
                                                    <asp:ListItem Value="Nepal" Text="Nepal"/>
                                                    <asp:ListItem Value="Netherlands" Text="Netherlands"/>
                                                    <asp:ListItem Value="New Caledonia" Text="New Caledonia"/>
                                                    <asp:ListItem Value="New Zealand" Text="New Zealand"/>
                                                    <asp:ListItem Value="Nicaragua" Text="Nicaragua"/>
                                                    <asp:ListItem Value="Niger" Text="Niger"/>
                                                    <asp:ListItem Value="Nigeria" Text="Nigeria"/>
                                                    <asp:ListItem Value="Niue" Text="Niue"/>
                                                    <asp:ListItem Value="Norfolk Island" Text="Norfolk Island"/>
                                                    <asp:ListItem Value="North Korea" Text="North Korea"/>
                                                    <asp:ListItem Value="Northern Mariana Islands" Text="Northern Mariana Islands"/>
                                                    <asp:ListItem Value="Norway" Text="Norway"/>
                                                    <asp:ListItem Value="Oman" Text="Oman"/>
                                                    <asp:ListItem Value="Pakistan" Text="Pakistan"/>
                                                    <asp:ListItem Value="Palau" Text="Palau"/>
                                                    <asp:ListItem Value="Palestine" Text="Palestine"/>
                                                    <asp:ListItem Value="Panama" Text="Panama"/>
                                                    <asp:ListItem Value="Papua New Guinea" Text="Papua New Guinea"/>
                                                    <asp:ListItem Value="Paraguay" Text="Paraguay"/>
                                                    <asp:ListItem Value="Peru" Text="Peru"/>
                                                    <asp:ListItem Value="Philippines" Text="Philippines"/>
                                                    <asp:ListItem Value="Poland" Text="Poland"/>
                                                    <asp:ListItem Value="Puerto Rico" Text="Puerto Rico"/>
                                                    <asp:ListItem Value="Qatar" Text="Qatar"/>
                                                    <asp:ListItem Value="Réunion" Text="Réunion"/>
                                                    <asp:ListItem Value="Romania" Text="Romania"/>
                                                    <asp:ListItem Value="Russia" Text="Russia"/>
                                                    <asp:ListItem Value="Rwanda" Text="Rwanda"/>
                                                    <asp:ListItem Value="Samoa" Text="Samoa"/>
                                                    <asp:ListItem Value="San Marino" Text="San Marino"/>
                                                    <asp:ListItem Value="Sao Tomé & Príncipe" Text="Sao Tomé & Príncipe"/>
                                                    <asp:ListItem Value="Saudi Arabia" Text="Saudi Arabia"/>
                                                    <asp:ListItem Value="Senegal" Text="Senegal"/>
                                                    <asp:ListItem Value="Serbia" Text="Serbia"/>
                                                    <asp:ListItem Value="Seychelles" Text="Seychelles"/>
                                                    <asp:ListItem Value="Sierra Leone" Text="Sierra Leone"/>
                                                    <asp:ListItem Value="Singapore" Text="Singapore"/>
                                                    <asp:ListItem Value="Sint Maarten" Text="Sint Maarten"/>
                                                    <asp:ListItem Value="Slovakia" Text="Slovakia"/>
                                                    <asp:ListItem Value="Slovenia" Text="Slovenia"/>
                                                    <asp:ListItem Value="Solomon Islands" Text="Solomon Islands"/>
                                                    <asp:ListItem Value="Somalia" Text="Somalia"/>
                                                    <asp:ListItem Value="South Africa" Text="South Africa"/>
                                                    <asp:ListItem Value="South Korea" Text="South Korea"/>
                                                    <asp:ListItem Value="South Sudan" Text="South Sudan"/>
                                                    <asp:ListItem Value="Spain" Text="Spain"/>
                                                    <asp:ListItem Value="Sri Lanka" Text="Sri Lanka"/>
                                                    <asp:ListItem Value="St. Barthélemy" Text="St. Barthélemy"/>
                                                    <asp:ListItem Value="St. Helena" Text="St. Helena"/>
                                                    <asp:ListItem Value="St. Kitts & Nevis" Text="St. Kitts & Nevis"/>
                                                    <asp:ListItem Value="St. Lucia" Text="St. Lucia"/>
                                                    <asp:ListItem Value="St. Martin" Text="St. Martin"/>
                                                    <asp:ListItem Value="St. Pierre & Miquelon" Text="St. Pierre & Miquelon"/>
                                                    <asp:ListItem Value="St. Vincent & Grenadies" Text="St. Vincent & Grenadies"/>
                                                    <asp:ListItem Value="Sudan" Text="Sudan"/>
                                                    <asp:ListItem Value="Suriname" Text="Suriname"/>
                                                    <asp:ListItem Value="Swaziland" Text="Swaziland"/>
                                                    <asp:ListItem Value="Sweden" Text="Sweden"/>
                                                    <asp:ListItem Value="Switzerland" Text="Switzerland"/>
                                                    <asp:ListItem Value="Syria" Text="Syria"/>
                                                    <asp:ListItem Value="Taiwan" Text="Taiwan"/>
                                                    <asp:ListItem Value="Tajikistan" Text="Tajikistan"/>
                                                    <asp:ListItem Value="Tanzania" Text="Tanzania"/>
                                                    <asp:ListItem Value="Thailand" Text="Thailand"/>
                                                    <asp:ListItem Value="Timor-Leste" Text="Timor-Leste"/>
                                                    <asp:ListItem Value="Togo" Text="Togo"/>
                                                    <asp:ListItem Value="Tokelau" Text="Tokelau"/>
                                                    <asp:ListItem Value="Tonga" Text="Tonga"/>
                                                    <asp:ListItem Value="Trinidad & Tobago" Text="Trinidad & Tobago"/>
                                                    <asp:ListItem Value="Tunisia" Text="Tunisia"/>
                                                    <asp:ListItem Value="Turkey" Text="Turkey"/>
                                                    <asp:ListItem Value="Turkmenistan" Text="Turkmenistan"/>
                                                    <asp:ListItem Value="Turks & Caicos Islands" Text="Turks & Caicos Islands"/>
                                                    <asp:ListItem Value="Tuvalu" Text="Tuvalu"/>
                                                    <asp:ListItem Value="U.S. Virgin Islands" Text="U.S. Virgin Islands"/>
                                                    <asp:ListItem Value="Uganda" Text="Uganda"/>
                                                    <asp:ListItem Value="Ukraine" Text="Ukraine"/>
                                                    <asp:ListItem Value="United Arab Emirates" Text="United Arab Emirates"/>
                                                    <asp:ListItem Value="United Kingdom" Text="United Kingdom"/>
                                                    <asp:ListItem Value="United States" Text="United States"/>
                                                    <asp:ListItem Value="Uruguay" Text="Uruguay"/>
                                                    <asp:ListItem Value="Uzbekistan" Text="Uzbekistan"/>
                                                    <asp:ListItem Value="Vanuatu" Text="Vanuatu"/>
                                                    <asp:ListItem Value="Vatican City" Text="Vatican City"/>
                                                    <asp:ListItem Value="Venezuela" Text="Venezuela"/>
                                                    <asp:ListItem Value="Vietnam" Text="Vietnam"/>
                                                    <asp:ListItem Value="Wallis & Futuna" Text="Wallis & Futuna"/>
                                                    <asp:ListItem Value="Yemen" Text="Yemen"/>
                                                    <asp:ListItem Value="Zambia" Text="Zambia"/>
                                                    <asp:ListItem Value="Zimbabwe" Text="Zimbabwe"/>

                                       </asp:DropDownList>
                                    
                               </div>
                               
                               </div>
                               
                               
                               <div class="form-row">
                                   
                                    <div class="form-group col-sm">
                                       <asp:Label ID="lbl_city" runat="server" Text="City"></asp:Label>
                                         <asp:TextBox ID="txt_city" class="form-control" placeholder="Enter City"  runat="server"></asp:TextBox>
                                    
                                    </div>
                                    <div class="form-group col-sm">
                                       <asp:Label ID="lbl_cell_phone" runat="server" Text="Cell Phone"></asp:Label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">+<asp:Label ID="lbl_lada" runat="server" Text=""></asp:Label></div>
                                            </div>
                                            <asp:TextBox ID="txt_cell_phone" class="form-control inlineFormInputGroupUsername" placeholder="Enter Cell Phone" runat="server"></asp:TextBox>
                                              
                                        </div>
                                        </div>
                                    <div class="form-group col-sm">
                                        <asp:Label ID="lbl_zip_code" runat="server" Text="Zip Code"></asp:Label>
                                        <asp:TextBox ID="txt_zipcode" class="form-control" placeholder="Enter Zip Code" runat="server"></asp:TextBox>
                                    
                                    </div>
                               </div>
                               <div class="form-row">
                                   <div class="form-group col-sm">
                                        <asp:Label ID="lbl_address" runat="server" Text="Address"></asp:Label>
                                        <asp:TextBox ID="txt_address" class="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
                                    
                                   </div>
                                   <div class="form-group col-sm">
                                        <asp:Label ID="lbl_type_credit" runat="server" Text="Credit Card Type"></asp:Label>
                                        <asp:DropDownList ID="DDL_type" class="form-control"  runat="server" OnSelectedIndexChanged="SelectedIndex_Changed2" DataTextField="countryName" DataValueField="countryName">
                                           <asp:ListItem Value="0">Select</asp:ListItem>
                                                    <asp:ListItem Value="Master Card" Text="Master Card"/>
                                                    <asp:ListItem Value="American Express" Text="American Express"/>
                                                    <asp:ListItem Value="Visa" Text="Visa"/>
                                                    <asp:ListItem Value="Bitcoin Card" Text="Bitcoin Card"/>
                                                    <asp:ListItem Value="Etherium Card" Text="Etherium Card"/>
                                         </asp:DropDownList>
                                         
                                    
                                    </div>
                                    <div class="form-group col-sm">
                                        <asp:Label ID="lbl_credit_card" runat="server" Text="Credit Card Number"></asp:Label>
                                        <asp:TextBox ID="txt_credit_card" class="form-control" placeholder="0000-000-0000-000" runat="server"></asp:TextBox>
                                    </div>
                               </div>
                               <div id="ContentPlaceHolder1_lbl_1">
                                        <asp:Label ID="Label1" runat="server" Text="Expiration Date"></asp:Label>
                                   
                                    </div>
                               <div class="form-row">
                                    
                                    <div class="form-group col-md-4">
                                    <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>
                                        <asp:DropDownList ID="DDL_1" class="form-control" runat="server" OnSelectedIndexChanged="SelectedIndex_Changed" DataTextField="countryName"  DataValueField="countryName">
                                           <asp:ListItem Value="0">Select</asp:ListItem>
                                                    <asp:ListItem Value="01" Text="01"/>
                                                    <asp:ListItem Value="02"  Text="02"/>
                                                    <asp:ListItem Value="03" Text="03"/>
                                                    <asp:ListItem Value="04" Text="04"/>
                                                    <asp:ListItem Value="05" Text="05"/>
                                                    <asp:ListItem Value="06" Text="06"/>
                                                    <asp:ListItem Value="07" Text="07"/>
                                                    <asp:ListItem Value="08" Text="08"/>
                                                    <asp:ListItem Value="09" Text="09"/>
                                                    <asp:ListItem Value="10" Text="10"/> 
                                                    <asp:ListItem Value="11" Text="11"/>
                                                    <asp:ListItem Value="12" Text="12"/> 
                                                    
                                         </asp:DropDownList>
                                      
                                    </div>
                                    <div class="form-group col-md-4">
                                        <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                                        <asp:DropDownList ID="DDL_2" class="form-control"  runat="server" InitialValue="0" OnSelectedIndexChanged="SelectedIndex_Changed1" DataTextField="countryName" DataValueField="countryName">
                                           <asp:ListItem Value="0">Select</asp:ListItem>
                                                    <asp:ListItem Value="13" Text="13"/>
                                                    <asp:ListItem Value="14" Text="14"/>
                                                    <asp:ListItem Value="15" Text="15"/>
                                                    <asp:ListItem Value="16" Text="16"/>
                                                    <asp:ListItem Value="17" Text="17"/>
                                                    <asp:ListItem Value="18" Text="18"/>
                                                    <asp:ListItem Value="19" Text="19"/>
                                                    <asp:ListItem Value="20" Text="20"/>
                                                    <asp:ListItem Value="21" Text="21"/>
                                                    <asp:ListItem Value="22" Text="22"/> 
                                                    <asp:ListItem Value="23" Text="23"/>
                                                    <asp:ListItem Value="24" Text="24"/> 
						                            <asp:ListItem Value="25" Text="25"/> 
                                                    <asp:ListItem Value="26" Text="26"/>
                                                    <asp:ListItem Value="27" Text="27"/> 
                                                    
                                         </asp:DropDownList>
                                       
                                    </div>
                                    <div class="form-group col-md-4">
                                        
                                        <asp:Label ID="lbl_code_security" runat="server" Text="Code Security"></asp:Label>
                                        <asp:TextBox ID="txt_code_security" class="form-control" placeholder="000" runat="server"></asp:TextBox>
                                     </div>
                                </div>
                               
                               <div class="alinear">
                                   <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Return to Home" OnClick="Button1_Click" />
            
                               </div>
                       </div>
 
            </div>
        </section>
    </article>

</asp:Content>
