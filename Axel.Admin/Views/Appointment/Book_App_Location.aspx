<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Axel.Admin.Models.AppointmentModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Book Appointment
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="inner_wrapper">
        <div class="heading" style="margin-bottom: 30px;">
            <h1>Appointment</h1>
        </div>
        <div id="enter-log-book" class="typography">
            <form action="#" method="post" class="form log-book-form">
                <%=Html.Hidden("SEQ_ID",Model.SEQ_ID)%>
                <%=Html.Hidden("ADDITIONAL_COMMENTS",Model.ADDITIONAL_COMMENTS)%>
                <%=Html.Hidden("CODE",Model.CODE)%>
                <%=Html.Hidden("CREATED_BY",Model.CREATED_BY)%>
                <%=Html.Hidden("CREATED_ON",Model.CREATED_ON)%>
                <%=Html.Hidden("CAR_SEQ_ID",Model.CAR_SEQ_ID)%>
                <%=Html.Hidden("CUSTOMER_SEQ_ID",Model.CUSTOMER_SEQ_ID)%>
                <%=Html.Hidden("CUSTOMER_TYPE_SEQ_ID",Model.CUSTOMER_TYPE_SEQ_ID)%>
                <%=Html.Hidden("DATE",Model.DATE)%>
                <%=Html.Hidden("DRIVING_DIRECTIONS",Model.DRIVING_DIRECTIONS)%>
                <%=Html.Hidden("FARE",Model.FARE)%>
                <%=Html.Hidden("FIRST_NAME",Model.FIRST_NAME)%>
                <%=Html.Hidden("LAST_NAME",Model.LAST_NAME)%>
                <%=Html.Hidden("LUGGAGE",Model.LUGGAGE)%>
                <%=Html.Hidden("MOBILE_NO",Model.MOBILE_NO)%>
                <%=Html.Hidden("MODIFIED_BY",Model.MODIFIED_BY)%>
                <%=Html.Hidden("MODIFIED_ON",Model.MODIFIED_ON)%>
                <%=Html.Hidden("NO_OF_BOOSTERS",Model.NO_OF_BOOSTERS)%>
                <%=Html.Hidden("NO_OF_CHILDREN",Model.NO_OF_CHILDREN)%>
                <%=Html.Hidden("NO_OF_INFANTS",Model.NO_OF_INFANTS)%>
                <%=Html.Hidden("NO_OF_PASSENGERS",Model.NO_OF_PASSENGERS)%>
                <%=Html.Hidden("OTHER_CHARGES",Model.OTHER_CHARGES)%>
                <%=Html.Hidden("PAYMENT_MODE_SEQ_ID",Model.PAYMENT_MODE_SEQ_ID)%>
                <%=Html.Hidden("PAYMENT_TERMS_SEQ_ID",Model.PAYMENT_TERMS_SEQ_ID)%>
                <%=Html.Hidden("RETURN_TIME",Model.RETURN_TIME)%>
                <%=Html.Hidden("STATUS_SEQ_ID",Model.STATUS_SEQ_ID)%>
                <%=Html.Hidden("TIME",Model.TIME)%>
                <%=Html.Hidden("TOTAL_AMOUNT",Model.TOTAL_AMOUNT)%>
                <%=Html.Hidden("VEHICLE_SEQ_ID",Model.VEHICLE_SEQ_ID)%>
                <%=Html.Hidden("WAIT_AND_RETURN",Model.WAIT_AND_RETURN)%>
                <%=Html.Hidden("STOP_OVER",Model.STOP_OVER)%>

                <h3 class="heading">Location Details</h3>
                <div class="rows clr">
                    <div class="column" style="width: 94%">
                        <label>Pickup:<span>*</span></label>
                        <% = Html.TextBox("PICKUP_LOCATION", Model.PICKUP_LOCATION, new { @class = "text_field", @required="required", id="autocomplete"})%>
                        <%=Html.Hidden("PICKUP_POST_CODE",Model.PICKUP_POST_CODE)%>
                        <%=Html.Hidden("PICKUP_COUNTRY",Model.PICKUP_COUNTY)%>
                        <%=Html.Hidden("PICKUP_COUNTY",Model.PICKUP_COUNTY)%>
                        <%=Html.Hidden("PICKUP_CITY",Model.PICKUP_CITY)%>
                        <%=Html.Hidden("PICKUP_STREET_NAME",Model.PICKUP_STREET_NO)%>
                        <%=Html.Hidden("PICKUP_STREET_NO",Model.PICKUP_STREET_NO)%>
                        <%=Html.Hidden("PICKUP_HOUSE_NO",Model.PICKUP_HOUSE_NO)%>
                    </div>
                </div>

                <div class="rows clr">
                    <div class="column" style="width: 94%">
                        <label>Dropoff:<span>*</span></label>
                        <% = Html.TextBox("DROPOFF_LOCATION", Model.DROPOFF_LOCATION, new { @class = "text_field", @required="required", id="dropautocomplete"})%>
                        <%=Html.Hidden("DROPOFF_POST_CODE",Model.DROPOFF_POST_CODE)%>
                        <%=Html.Hidden("DROPOFF_COUNTRY",Model.DROPOFF_COUNTY)%>
                        <%=Html.Hidden("DROPOFF_COUNTY",Model.DROPOFF_COUNTY)%>
                        <%=Html.Hidden("DROPOFF_CITY",Model.DROPOFF_CITY)%>
                        <%=Html.Hidden("DROPOFF_STREET_NAME",Model.PICKUP_STREET_NO)%>
                        <%=Html.Hidden("DROPOFF_STREET_NO",Model.DROPOFF_STREET_NO)%>
                        <%=Html.Hidden("DROPOFF_HOUSE_NO",Model.DROPOFF_HOUSE_NO)%>
                    </div>
                </div>

                <div class="rows clr">
                    <div class="column">
                        <label>Distance:</label>
                        <% = Html.TextBox("DISTANCE", Model.DISTANCE, new { @class = "text_field"})%>
                    </div>
                </div>

                <hr style="width: 910px; margin-left: 0px;" />
                <div class="back" style="float: right; padding-right: 38px;">
                    <a href="<%= Url.Action("Book_App_Customer", "Appointment", new { ID = Model.SEQ_ID })%>" onclick="return GoBack();">Back to Previous Page</a>

                    <input type="submit" class="button small_margin cgreen" value="Save and Next" name="savenew" />
                    <%--<input type="submit" class="button small_margin " value="Save and Back to Dashboard" name="submit" />--%>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript">
        $(function () {


            var placeSearch, autocomplete, dropautocomplete;
            var component_form = {
                'PICKUP_HOUSE_NO': 'subpremise',
                'PICKUP_STREET_NO': 'street_number',
                'PICKUP_STREET_NAME': 'route',
                'PICKUP_CITY': 'locality',
                'PICKUP_POST_CODE': 'postal_code',
                'PICKUP_COUNTY': 'administrative_area_level_1',
                'PICKUP_COUNTRY': 'country'
            };
            var drop_component_form = {
                'DROPOFF_HOUSE_NO': 'subpremise',
                'DROPOFF_STREET_NO': 'street_number',
                'DROPOFF_STREET_NAME': 'route',
                'DROPOFF_CITY': 'locality',
                'DROPOFF_POST_CODE': 'postal_code',
                'DROPOFF_COUNTY': 'administrative_area_level_1',
                'DROPOFF_COUNTRY': 'country'
            };

            function initialize() {
                autocomplete = new google.maps.places.Autocomplete(document.getElementById('autocomplete'), {
                    types: ['geocode']
                });
                dropautocomplete = new google.maps.places.Autocomplete(document.getElementById('dropautocomplete'), {
                    types: ['geocode']
                });
                google.maps.event.addListener(autocomplete, 'place_changed', function () {
                    fillInAddress();
                });
                google.maps.event.addListener(dropautocomplete, 'place_changed', function () {
                    dropfillInAddress();
                });

                $('table td input').attr('disabled', true);
            }

            function fillInAddress() {
                var place = autocomplete.getPlace();

                for (var component in component_form) {
                    document.getElementById(component).value = "";
                    document.getElementById(component).disabled = false;
                }

                for (var j = 0; j < place.address_components.length; j++) {
                    var att = place.address_components[j].types[0];
                    fillFormInput(att, place.address_components[j].long_name);
                }
            }
            function fillFormInput(att, val) {
                for (var c in component_form) {
                    if (component_form[c] === att) {
                        $('#' + c).val(val);
                    }
                }
            }

            function dropfillInAddress() {
                var place = dropautocomplete.getPlace();

                for (var component in drop_component_form) {
                    document.getElementById(component).value = "";
                    document.getElementById(component).disabled = false;
                }

                for (var j = 0; j < place.address_components.length; j++) {
                    var att = place.address_components[j].types[0];
                    dropfillFormInput(att, place.address_components[j].long_name);
                }
            }
            function dropfillFormInput(att, val) {
                for (var c in drop_component_form) {
                    if (drop_component_form[c] === att) {
                        $('#' + c).val(val);
                    }
                }
            }

            $(function () {
                initialize();
            });

            $('#dropautocomplete').blur(function () {
                $.ajax({
                    url: '../CalculateDistance',
                    data: JSON.stringify({ origin: $('#autocomplete').val(), destination: $('#dropautocomplete').val() }),
                    type: 'POST',
                    contentType: 'application/json; charset=utf-8',
                    success: function (data) {
                        if (data != null) {
                            $('#DISTANCE').val(data);
                        }
                        else {

                        }
                    }
                });
            });

        });

    </script>
</asp:Content>
