<!DOCTYPE html>
<html>
<head>
    <title>Consulta de Medicamentos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .container {
            margin-top: 50px;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            loadTableData(1);

           

            $("#searchButton").on("click", function() {
                loadTableData(1);
            });

            $("#resultsPerPage").on("change", function() {
                loadTableData(1);
            });
        });

        function loadTableData(page) {
            var searchInput = $("#searchInput").val();
            var resultsPerPage = $("#resultsPerPage").val();
            $.ajax({
                url: "get_data.php",
                type: "POST",
                data: {page: page, searchInput: searchInput, resultsPerPage: resultsPerPage},
                success: function(response) {
                    $("#tableData").html(response);
                }
            });
        }
    </script>
</head>
<body>

    <div class = "container">
                <h1>TABLA DINAMICA</h1>
    </div>
    <div class="container">
        
        <div class="row">
            
            <div class="col-md-6">
                <input type="text" id="searchInput" class="form-control" placeholder="Buscar por nombre">
            </div>
            <div class="col-md-2">
                <button id="searchButton" class="btn btn-primary">Buscar</button>
            </div>
            <div class="col-md-2">
                <select id="resultsPerPage" class="form-control">
                    <option value="10">10</option>
                    <option value="20">20</option>
                    <option value="30">30</option>
                </select>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-md-12">
                <div id="tableData"></div>
            </div>
        </div>
    </div>
</body>
</html>
