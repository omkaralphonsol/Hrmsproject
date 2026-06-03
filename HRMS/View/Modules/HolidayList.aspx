<%@ Page Title="Holiday List" Language="C#" MasterPageFile="~/View/Layout/Site1.Master" AutoEventWireup="true" CodeBehind="HolidayList.aspx.cs" Inherits="HRMS.View.Modules.HolidayList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .holiday-page {
            color: #1f2937;
        }

        .holiday-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 22px;
        }

        .holiday-title-wrap {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .holiday-icon {
            width: 54px;
            height: 54px;
            border-radius: 8px;
            background: linear-gradient(135deg, #556ee6, #4053d4);
            color: #fff;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 10px 22px rgba(85, 110, 230, 0.28);
        }

        .holiday-icon i {
            font-size: 28px;
        }

        .holiday-title {
            margin: 0;
            font-size: 28px;
            font-weight: 600;
            color: #1f2937;
            letter-spacing: 0;
        }

        .holiday-subtitle {
            margin: 4px 0 0;
            color: #74788d;
            font-size: 15px;
        }

        .holiday-actions {
            display: flex;
            align-items: center;
            gap: 12px;
            flex-wrap: wrap;
            justify-content: flex-end;
        }

        .holiday-shell {
            background: #fff;
            border: 1px solid #e9edf5;
            border-radius: 8px;
            box-shadow: 0 8px 24px rgba(18, 38, 63, 0.06);
            padding: 26px;
        }

        .holiday-toolbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 22px;
        }

        .holiday-year-group {
            display: flex;
            align-items: center;
            gap: 16px;
            flex-wrap: wrap;
        }

        .holiday-year-label {
            color: #111827;
            font-size: 16px;
            font-weight: 500;
            white-space: nowrap;
        }

        .holiday-year-group .holiday-control {
            min-width: 230px;
        }

        .holiday-reset-wrap {
            margin-left: auto;
            display: inline-flex;
            gap: 12px;
            align-items: center;
            flex-wrap: wrap;
        }

        .holiday-upload-wrap {
            position: relative;
            display: inline-flex;
            align-items: center;
        }

        .holiday-upload-wrap i {
            position: absolute;
            left: 18px;
            z-index: 1;
            color: #fff;
            font-size: 20px;
            pointer-events: none;
        }

        .holiday-upload-wrap .holiday-btn {
            padding-left: 46px;
        }

        .holiday-control {
            height: 44px;
            border: 1px solid #dfe4ee;
            border-radius: 6px;
            background: #fff;
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 0 14px;
            color: #74788d;
        }

        .holiday-control i {
            font-size: 20px;
            color: #556ee6;
        }

        .holiday-control input {
            border: 0;
            outline: 0;
            width: 100%;
            color: #495057;
            background: transparent;
            font-size: 14px;
        }

        .holiday-control select {
            border: 0;
            outline: 0;
            width: 100%;
            color: #495057;
            background: transparent;
            font-size: 14px;
            appearance: auto;
        }

        .holiday-btn {
            min-height: 44px;
            border-radius: 6px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            font-weight: 500;
            padding: 0 18px;
            border: 1px solid #dfe4ee;
            white-space: nowrap;
            transition: all .15s ease;
        }

        .holiday-btn-primary {
            background: #556ee6;
            border-color: #556ee6;
            color: #fff;
            box-shadow: 0 8px 18px rgba(85, 110, 230, 0.22);
        }

        .holiday-btn-primary:hover,
        .holiday-btn-primary:focus {
            background: #485ec4;
            border-color: #485ec4;
            color: #fff;
        }

        .holiday-btn-light {
            background: #fff;
            color: #556ee6;
        }

        .holiday-btn-light:hover,
        .holiday-btn-light:focus {
            color: #4053d4;
            border-color: #cfd6ea;
            background: #f8f9fc;
        }

        .holiday-upload {
            position: relative;
            overflow: hidden;
        }

        .holiday-file {
            width: 1px;
            height: 1px;
            opacity: 0;
            overflow: hidden;
            position: absolute;
            pointer-events: none;
        }

        .holiday-choose-file {
            color: #1f2937;
        }

        .holiday-message {
            display: block;
            margin-bottom: 14px;
            font-weight: 500;
        }

        .holiday-table-wrap {
            border: 0;
            border-radius: 0;
            overflow: auto;
        }

        .holiday-table {
            margin: 0;
            min-width: 820px;
        }

        .holiday-table th {
            background: #f7f6ff;
            color: #1f2937;
            font-weight: 600;
            padding: 18px 20px !important;
            border-color: #e9edf5 !important;
            font-size: 15px;
        }

        .holiday-table th:first-child,
        .holiday-table td:first-child {
            width: 105px;
            text-align: center;
        }

        .holiday-table th:last-child,
        .holiday-table td:last-child {
            text-align: center;
        }

        .holiday-table td {
            padding: 17px 20px !important;
            border-color: #edf1f7 !important;
            vertical-align: middle !important;
            color: #2f3542;
            font-size: 15px;
            height: 62px;
        }

        .holiday-th-icon {
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .holiday-th-icon i {
            color: #556ee6;
            font-size: 18px;
        }

        .holiday-table tr:hover td {
            background: #fbfcff;
        }

        .holiday-date {
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        .holiday-date i {
            color: #556ee6;
            font-size: 19px;
        }

        .holiday-day-pill {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            min-width: 76px;
            min-height: 30px;
            padding: 4px 12px;
            border-radius: 8px;
            color: #0f9f4f;
            background: #e6f7ec;
            border: 1px solid #d1f0dc;
            font-weight: 500;
        }

        .holiday-day-pill.day-monday {
            color: #1769d1;
            background: #eaf3ff;
            border-color: #cfe4ff;
        }

        .holiday-day-pill.day-tuesday {
            color: #4d46d6;
            background: #eeeeff;
            border-color: #d9d6ff;
        }

        .holiday-day-pill.day-wednesday {
            color: #0f766e;
            background: #e6fffb;
            border-color: #b8f1ea;
        }

        .holiday-day-pill.day-thursday {
            color: #db2777;
            background: #fff0f6;
            border-color: #ffd6e7;
        }

        .holiday-day-pill.day-friday {
            color: #f97316;
            background: #fff7ed;
            border-color: #fed7aa;
        }

        .holiday-day-pill.day-saturday {
            color: #0f9f4f;
            background: #e6f7ec;
            border-color: #d1f0dc;
        }

        .holiday-day-pill.day-sunday {
            color: #b42318;
            background: #fff1f0;
            border-color: #ffd6d2;
        }

        .holiday-row-actions {
            display: flex;
            gap: 10px;
            align-items: center;
            flex-wrap: wrap;
            justify-content: center;
        }

        .holiday-download-small {
            min-height: 44px;
            padding: 0 18px;
            font-size: 14px;
            box-shadow: none;
        }

        .holiday-download-small i {
            font-size: 18px;
        }

        .holiday-action-edit,
        .holiday-action-delete,
        .holiday-action-save,
        .holiday-action-cancel {
            border-radius: 6px;
            min-height: 36px;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 0 12px;
            font-weight: 500;
            border: 1px solid transparent;
            text-decoration: none !important;
        }

        .holiday-action-edit {
            color: #556ee6 !important;
            background: #eef1ff;
            border-color: #dce2ff;
        }

        .holiday-action-delete {
            color: #f46a6a !important;
            background: #fff0f0;
            border-color: #ffdada;
        }

        .holiday-action-save {
            color: #34c38f !important;
            background: #e9f8f2;
            border-color: #d3f1e4;
        }

        .holiday-action-cancel {
            color: #74788d !important;
            background: #f3f4f7;
            border-color: #e1e4ea;
        }

        .holiday-edit-input {
            min-width: 140px;
            border-radius: 6px;
            border-color: #dfe4ee;
        }

        .holiday-empty {
            padding: 28px;
            text-align: center;
            color: #74788d;
        }

        @media (max-width: 991px) {
            .holiday-header {
                align-items: flex-start;
                flex-direction: column;
            }

            .holiday-actions {
                width: 100%;
                justify-content: flex-start;
            }

            .holiday-toolbar {
                align-items: stretch;
                flex-direction: column;
            }

            .holiday-reset-wrap {
                margin-left: 0;
            }

            .holiday-year-group .holiday-control {
                min-width: 100%;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="holiday-page">
        <div class="holiday-header">
            <div class="holiday-title-wrap">
                <div class="holiday-icon">
                    <i class="bx bx-calendar-event"></i>
                </div>
                <div>
                    <h1 class="holiday-title">Holiday List</h1>
                    <p class="holiday-subtitle">Manage company holidays</p>
                </div>
            </div>
            <div class="holiday-actions">
                <asp:FileUpload ID="fileUpload" runat="server" CssClass="holiday-file" />
                <label class="holiday-btn holiday-btn-light holiday-choose-file" for="<%= fileUpload.ClientID %>">
                    <i class="bx bx-upload"></i>
                    <span>Choose File</span>
                </label>
                <span class="holiday-upload-wrap">
                    <i class="bx bx-upload"></i>
                    <asp:Button ID="btnUpload" runat="server" Text="Upload Excel" CssClass="holiday-btn holiday-btn-primary" OnClick="btnUpload_Click" />
                </span>
            </div>
        </div>

        <div class="holiday-shell">
            <asp:Label ID="lblMessage" runat="server" CssClass="holiday-message text-success"></asp:Label>
            <asp:Label ID="lblError" runat="server" CssClass="holiday-message text-danger"></asp:Label>

            <div class="holiday-toolbar">
                <div class="holiday-year-group">
                    <span class="holiday-year-label">Select Year</span>
                    <label class="holiday-control" for="holidaySearchYear">
                        <i class="bx bx-calendar"></i>
                        <select id="holidaySearchYear" onchange="filterHolidayRows();">
                            <option value="">All Years</option>
                        </select>
                    </label>
                </div>
                <div class="holiday-reset-wrap">
                    <button type="button" class="holiday-btn holiday-btn-light" onclick="resetHolidayFilters();">
                        <i class="bx bx-reset"></i>
                        <span>Reset</span>
                    </button>
                    <button type="button" class="holiday-btn holiday-btn-light holiday-download-small" onclick="downloadHolidayData();">
                        <i class="bx bx-download"></i>
                        <span>Download Excel</span>
                    </button>
                </div>
            </div>

            <div class="holiday-table-wrap">
                <asp:GridView ID="gvHolidayList" runat="server" AutoGenerateColumns="False" CssClass="table holiday-table"
                        DataKeyNames="holiday_id" OnRowEditing="gvHolidayList_RowEditing" OnRowCancelingEdit="gvHolidayList_RowCancelingEdit"
                        OnRowUpdating="gvHolidayList_RowUpdating" OnRowCommand="gvHolidayList_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="Sr No.">
                                <ItemTemplate>
                                    <%# Container.DataItemIndex + 1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <span class="holiday-th-icon"><i class="bx bx-calendar"></i>Date</span>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <span class="holiday-date" data-date="<%# Convert.ToDateTime(Eval("holiday_date")).ToString("yyyy-MM-dd") %>">
                                        <%# Convert.ToDateTime(Eval("holiday_date")).ToString("dd-MM-yyyy") %>
                                    </span>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDate" runat="server" CssClass="form-control holiday-edit-input" Text='<%# Convert.ToDateTime(Eval("holiday_date")).ToString("yyyy-MM-dd") %>' TextMode="Date"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <span class="holiday-th-icon"><i class="bx bx-calendar"></i>Day</span>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <span class="holiday-day-pill"><%# Eval("holiday_day") %></span>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDay" runat="server" CssClass="form-control holiday-edit-input" Text='<%# Eval("holiday_day") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <span class="holiday-th-icon"><i class="bx bx-party"></i>Holiday</span>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <%# Eval("holiday_name") %>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtHoliday" runat="server" CssClass="form-control holiday-edit-input" Text='<%# Eval("holiday_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <span class="holiday-th-icon"><i class="bx bx-cog"></i>Action</span>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <div class="holiday-row-actions">
                                        <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit" CssClass="holiday-action-edit"><i class="bx bx-edit"></i> Edit</asp:LinkButton>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="SoftDelete" CommandArgument='<%# Eval("holiday_id") %>' CssClass="holiday-action-delete" OnClientClick="return confirm('Are you sure you want to delete this holiday?');"><i class="bx bx-trash"></i> Delete</asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <div class="holiday-row-actions">
                                        <asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update" CssClass="holiday-action-save"><i class="bx bx-check"></i> Update</asp:LinkButton>
                                        <asp:LinkButton ID="lnkCancel" runat="server" CommandName="Cancel" CssClass="holiday-action-cancel"><i class="bx bx-x"></i> Cancel</asp:LinkButton>
                                    </div>
                                </EditItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <div class="holiday-empty">No active holiday records found.</div>
                        </EmptyDataTemplate>
                    </asp:GridView>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            populateHolidayYears();
            applyDayPillColors();
        });

        function populateHolidayYears() {
            var yearSelect = document.getElementById('holidaySearchYear');

            if (!yearSelect) return;

            var currentYear = new Date().getFullYear();
            var startYear = currentYear - 10;
            var endYear = currentYear + 10;

            for (var year = startYear; year <= endYear; year++) {
                var option = document.createElement('option');
                option.value = year.toString();
                option.text = year.toString();
                yearSelect.appendChild(option);
            }

            yearSelect.value = currentYear.toString();
            filterHolidayRows();
        }

        function filterHolidayRows() {
            var searchYear = document.getElementById('holidaySearchYear').value || '';
            var table = document.getElementById('<%= gvHolidayList.ClientID %>');

            if (!table) return;

            var rows = table.getElementsByTagName('tr');
            for (var i = 1; i < rows.length; i++) {
                var row = rows[i];
                var dateNode = row.querySelector('[data-date]');
                var rowDate = dateNode ? dateNode.getAttribute('data-date') : '';
                var rowYear = rowDate.length >= 4 ? rowDate.substring(0, 4) : '';
                var yearMatches = !searchYear || rowYear === searchYear;

                row.style.display = yearMatches ? '' : 'none';
            }

        }

        function resetHolidayFilters() {
            document.getElementById('holidaySearchYear').value = '';
            filterHolidayRows();
        }

        function applyDayPillColors() {
            var pills = document.querySelectorAll('.holiday-day-pill');
            for (var i = 0; i < pills.length; i++) {
                var day = (pills[i].innerText || pills[i].textContent || '').toLowerCase().trim();
                if (day) {
                    pills[i].classList.add('day-' + day);
                }
            }
        }

        function downloadHolidayData() {
            var table = document.getElementById('<%= gvHolidayList.ClientID %>');
            var csv = 'Sr No,Date,Day,Holiday\n';
            var hasRows = false;

            if (table) {
                var rows = table.getElementsByTagName('tr');
                for (var i = 1; i < rows.length; i++) {
                    var row = rows[i];
                    if (row.style.display === 'none') continue;

                    var cells = row.getElementsByTagName('td');
                    if (cells.length < 4) continue;

                    var srNo = cleanCsvValue(cells[0].innerText || cells[0].textContent);
                    var dateText = cleanCsvValue(cells[1].innerText || cells[1].textContent);
                    var day = cleanCsvValue(cells[2].innerText || cells[2].textContent);
                    var holiday = cleanCsvValue(cells[3].innerText || cells[3].textContent);
                    csv += srNo + ',' + dateText + ',' + day + ',' + holiday + '\n';
                    hasRows = true;
                }
            }

            if (!hasRows) {
                Swal.fire({ icon: 'info', title: 'No Data', text: 'No holiday records available to download.' });
                return;
            }

            var blob = new Blob([csv], { type: 'text/csv;charset=utf-8;' });
            var link = document.createElement('a');
            link.href = URL.createObjectURL(blob);
            link.download = 'Holiday_List.csv';
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
        }

        function cleanCsvValue(value) {
            value = (value || '').replace(/\s+/g, ' ').trim();
            value = value.replace(/"/g, '""');
            return '"' + value + '"';
        }
    </script>
</asp:Content>
