<section class="content-header">
    <h1>
        Editar un Paciente

    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url('admin'); ?>"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li><a href="<?php echo base_url('admin/opciones'); ?>"><i class="fa fa-gears"></i> Administraci&oacute;n</a></li>
        <li class="active">Editar Paciente</li>
    </ol>
</section>


<!-- Main content -->
<section class="content">

    <div class="row" id="crud">
        <div class="col-md-8">
            <div class="panel panel-default">

                <div class="panel-body">

                    <form id="editPost" autocomplete="off" @submit.prevent="editform">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nome Paciente </label>
                            <input type="text" class="form-control" id="nombr" name="nombr" value="<?php echo $paciente->nombre ?>">
                            <input type="hidden" class="form-control" id="id" name="id" value="<?php echo $paciente->id ?>">

                        </div>


                        <div class="form-group">
                            <label for="exampleInputEmail1">Nome Mãe </label>
                            <input type="text" class="form-control" id="nom_mat" value="<?php echo $paciente->ap_materno ?>" name="nom_mat">

                        </div>

                        <div class="form-group">
                            <label for="tfoto" class="col-sm-2 control-label">Imagen</label>
                            <?php echo form_error('tfoto', '<div class="alert alert-danger">', '</div>');

                            $campo = array(
                                'name'    => 'tfoto',
                                'id'    => 'tfoto',

                                'value' => set_value('tfoto'),
                                'placeholder' => 'Seleccione una foto',
                                'class' => 'form-control',

                                'data-toggle' => "tooltip", 'data-placement' => "top", 'title' => "Seleccione un archivo con su foto"


                            );

                            echo form_upload($campo);
                            ?>


                        </div>


                        <div class="form-group">
                            <label for="exampleInputEmail1">Data de Nascimento</label>
                            <input type="text" class="form-control" id="date" name="date" data-provide="datepicker">

                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">CPF</label>
                            <input type="text" class="form-control" id="cpf" name="cpf"  v-model="cpf"  @blur="cadastrar"   value="<?php echo $paciente->cpf ?>" >

                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">CNS</label>
                            <input type="text" class="form-control" id="cns" name="cns" value="<?php echo $paciente->cns ?>">

                        </div>


                        <div class="form-group">
                            <label for="exampleInputEmail1">Endereço completo</label>
                            <input type="text" class="form-control" id="dom" name="dom" value="<?php echo $paciente->direccion ?>">

                        </div>
                        <center><input type="submit" value="Editar" class="btn btn-success"></center>
                    </form>



                    <div class="pull-left">
                        <a href="<?php echo base_url('publico')  ?>" class="btn btn-danger"> Volver </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    </div>

</section>