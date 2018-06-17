<?php
require_once("../../interface/globals.php");
require_once("$srcdir/headers.inc.php");
require_once("$srcdir/htmlspecialchars.inc.php");
require_once("$srcdir/patient.inc");
require_once("$srcdir/formatting.inc.php");

$dateFormat = DateFormatRead();
$providers = getProviderInfo();
call_required_libraries(array("jquery-min-3-1-1","bootstrap","datepicker"));
?>
<html>
<head>
  <link href="css/add.css" rel="stylesheet" />
  <script type="text/javascript" src="../../library/dialog.js"></script>
</head>
<body>

  <div class="container-fluid">
    <div class="row title">
      <h3><?php echo htmlspecialchars(xl('Add Vacation/Holiday'), ENT_NOQUOTES); ?></h3>
    </div>

    <!--Vacation & Holiday tab options-->
    <div class="row title">
      <h3><button type="button" class="btn btn-default btn-sm col-sm-offset-1 col-sm-4" id="vacation-btn">Add Vacation</button></h3>
      <h3><button type="button" class="btn btn-default btn-sm col-sm-offset-1 col-sm-4" id="holiday-btn">Add Holiday</button></h3>
    </div>


    <!--Vacation & Holiday tabs-->
    <!--Add Vacation tab-->
    <form class="form-horizontal vacation-form"  action="" method="POST" style="margin-top: 20px;">
      <div class="form-group">
        <label class="control-label col-sm-2" for="startDate">Start date</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="startDate" name="startDate" placeholder="Date" required>
        </div>
        <label class="control-label col-sm-2" for="endDate">End date</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="endDate" name="endDate" placeholder="Date" required>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="provider_id">Provider</label>
        <div class="col-sm-10">
          <select class="form-control" id="provider_id" name="provider_id">
            <option value="0">Choose Provider</option>
            <?php
            foreach($providers as $provider) {
              $id = $provider['id'];
              $selected = ($_POST['provider_id'] == $id) ? "selected" : "";
              echo "<option value='$id' $selected>" . htmlspecialchars($provider['lname'],ENT_QUOTES) . ", " . htmlspecialchars($provider['fname'],ENT_QUOTES) . "</option>\n";
            }
            ?>
          </select>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-default" name="submit" value="1">Submit</button>
        </div>
      </div>
    </form>
    <!--Add Vacation tab-->


    <!--Add Holiday tab-->
    <form class="form-horizontal holiday-form"  action="" method="POST" style="margin-top: 20px;">
      <div class="form-group">
        <label class="control-label col-sm-2" for="addDate">Add date</label>
        <div class="col-sm-4">
          <input type="text" class="form-control" id="addDate" name="addDate" placeholder="Date" required>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2" for="provider_id">Provider</label>
        <div class="col-sm-10">
          <select class="form-control" id="provider_id" name="provider_id">
            <option value="0">Choose Provider</option>
            <?php
            foreach($providers as $provider) {
              $id = $provider['id'];
              $selected = ($_POST['provider_id'] == $id) ? "selected" : "";
              echo "<option value='$id' $selected>" . htmlspecialchars($provider['lname'],ENT_QUOTES) . ", " . htmlspecialchars($provider['fname'],ENT_QUOTES) . "</option>\n";
            }
            ?>
          </select>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-2">
          <button type="button" class="btn btn-default" id="add">Add</button>
        </div>
        <div class="col-sm-2">
          <button type="submit" class="btn btn-default" name="submit" value="1">Submit</button>
        </div>
      </div>
    </form>
    <br>
    <table class="table table-hover col-sm-offset-1" id="date-table">
      <tr style="background-color: #ddd;">
        <th><?php echo xlt('Selected date(s)')?></th>
      </tr>
    </table>

    <script type="text/javascript">
      $(document).ready(function () {
        // Adding selected date to date-table
        $("#add").on("click", function () {
          var dateForm = $("input#addDate").val();
          var row = '<tr class="date-row">' +
                        '<td>' + dateForm + '</td>'
                    '</tr>';
          $("#date-table").append(row).fadeIn();
        });
      });
    </script>
    <!--Add Holiday tab-->


    <!-- Controlling tabs -->
    <script type="text/javascript">
      $(document).ready(function () {
        $("#holiday-btn").on("click", function () {
          $(".vacation-form").fadeOut(100, function (){
            $(".holiday-form").fadeIn(400);
          });
        });

        $("#vacation-btn").on("click", function () {
          $("#date-table").fadeOut(100);
          $(".date-row").remove();
          $(".holiday-form").fadeOut(100, function (){
            $(".vacation-form").fadeIn(400);
          });
        });
      });
    </script>
  </div>

  <script>
    $('#addDate').datetimepicker({
      timepicker: false,
      format: '<?php echo $dateFormat; ?>',
      formatDate: '<?php echo $dateFormat; ?>',
    });
    $('#startDate').datetimepicker({
      timepicker: false,
      format: '<?php echo $dateFormat; ?>',
      formatDate: '<?php echo $dateFormat; ?>',
      onShow: function( ct ){
        this.setOptions({
          maxDate: $('#endDate').val() ? $('#endDate').val() : false
       })
      }
    });
    $('#endDate').datetimepicker({
      timepicker: false,
      format: '<?php echo $dateFormat; ?>',
      formatDate: '<?php echo $dateFormat; ?>',
      onShow: function( ct ){
        this.setOptions({
          minDate: $('#startDate').val() ? $('#startDate').val() : false
       })
      }
    });
  </script>
</body>
</html>
