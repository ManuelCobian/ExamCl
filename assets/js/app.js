
 var v = new Vue({
        el: '#app',
        data: {
            pacientes: [],
    
        },
        created() {
            this.get_pacientes();
        },
           
     
        methods: {
          get_pacientes(){
            axios.get('api/get_pacientes')
            .then(res => {
                //this.formEditar = res.data
                this.pacientes=res.data;
                //alert(this.pacientes)
               // this.orgas = res.data

            })

          },alta(){
            const form = document.getElementById('altaPost')
            axios.post('Api/agregar_pacientes', new FormData(form))
            .then( res =>{
            this.respuesta = res.data
                if (res.data == 'success') {
                    swal({
                        title:'Buen trabajo',
                        text:'Post Guardado!!',
                        icon:'success',
                        button:'Ok!'
                    })
                    form.reset()
                } else {
                    swal('El post no se pudo guardar')
                }
            })
          },editform(){

            const form = document.getElementById('editPost')
            axios.post('Api/editar_pacientes', new FormData(form))
            .then( res =>{
            this.respuesta = res.data
                if (res.data == 'success') {
                    swal({
                        title:'Buen trabajo',
                        text:'Paciente Editado!!',
                        icon:'success',
                        button:'Ok!'
                    })
                    window.location.href="Publico/";
                    form.reset()
                } else {
                    swal('El post no se pudo guardar')
                }
            })

          },toEditView(id){
            window.location.href="Publico/editar_paciente/"+id;
          },
          toDetalleView(id){
            window.location.href="Publico/detalle_paciente/"+id;
          },Eliminar(id){

            
               
                    axios.get('Api/eliminar_pacientes/' + id )
                    .then(res =>{
                    //this.Categoria();
                    if(res.data=='success'){
                        Swal('Deleted Post', '', 'info')
                        
                    }else{
                        Swal('Not Deleted!', '', 'info')
                    }
                    
                    })
                    window.location.href="Publico/";





          
          }
        }
    });









