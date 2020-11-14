<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="description" content="Plan Estatal de Desarrollo del Estado de Colima, PED, Propuestas, Consulta, Participacion, Sociedad, Gobierno">
		<meta name="author" content="Gobierno del Estado de Colima, Secretaria de Planeacion y Finanzas">
		
		<title><?php if(isset($titulo)) {echo $titulo;} ?></title>
		

   
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url(); ?>bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<?php echo base_url(); ?>bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

   

    <!-- Custom CSS -->
    <link href="<?php echo base_url(); ?>css/sb-admin-2.css" rel="stylesheet">

 

    <!-- Custom Fonts -->
    <link href="<?php echo base_url(); ?>bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">



   

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>



		
		<?php if(isset($pagina)) { $this->load->view($pagina);} ?>
		
		
   <!-- jQuery -->
    <script src="<?php echo base_url(); ?>bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url(); ?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<?php echo base_url(); ?>bower_components/metisMenu/dist/metisMenu.min.js"></script>

   

    <!-- Custom Theme JavaScript -->
    <script src="<?php echo base_url(); ?>js/sb-admin-2.js"></script>


</body>

</html>