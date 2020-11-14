
var v = new Vue({
    el: '#app',
    data: {
        pacientes: [],
        sytle: "hidden",
        cpf:''

    },
    created() {
        this.get_pacientes();
    },
    methods: {
        get_pacientes() {
            axios.get('api/get_pacientes')
                .then(res => {
                    //this.formEditar = res.data
                    this.pacientes = res.data;
                    //alert(this.pacientes)
                    // this.orgas = res.data

                })

        }, alta() {
            const form = document.getElementById('altaPost')
            axios.post('Api/agregar_pacientes', new FormData(form))
                .then(res => {
                    this.respuesta = res.data
                    if (res.data == 'success') {
                        swal({
                            title: 'Buen trabajo',
                            text: 'Post Guardado!!',
                            icon: 'success',
                            button: 'Ok!'
                        })
                        form.reset()
                    } else {
                        swal('El post no se pudo guardar')
                    }
                })
        }, editform() {

            const form = document.getElementById('editPost')
            axios.post('Api/editar_pacientes', new FormData(form))
                .then(res => {
                    this.respuesta = res.data
                    if (res.data == 'success') {
                        swal({
                            title: 'Buen trabajo',
                            text: 'Paciente Editado!!',
                            icon: 'success',
                            button: 'Ok!'
                        })
                        window.location.href = "Publico/";
                        form.reset()
                    } else {
                        swal('El post no se pudo guardar')
                    }
                })

        }, cadastrar(event) {
            event.preventDefault();
            if (!this.validaCpf(this.cpf)) {
                //alert("CPF Inválido");
                this.sytle ="hidden";
            } else {
                this.sytle="submit",
                this.cpf="";
               // alert("CPF OK");
            }
        }, validaCpf(c) {
            if ((c = c.replace(/[^\d]/g, "")).length != 11)
                return false

            if (c == "00000000000" ||
                c == "11111111111" ||
                c == "22222222222" ||
                c == "33333333333" ||
                c == "44444444444" ||
                c == "55555555555" ||
                c == "66666666666" ||
                c == "77777777777" ||
                c == "88888888888" ||
                c == "99999999999")
                return false;

            var r;
            var s = 0;

            for (i = 1; i <= 9; i++)
                s = s + parseInt(c[i - 1]) * (11 - i);

            r = (s * 10) % 11;

            if ((r == 10) || (r == 11))
                r = 0;

            if (r != parseInt(c[9]))
                return false;

            s = 0;

            for (i = 1; i <= 10; i++)
                s = s + parseInt(c[i - 1]) * (12 - i);

            r = (s * 10) % 11;

            if ((r == 10) || (r == 11))
                r = 0;

            if (r != parseInt(c[10]))
                return false;

            return true;
        }
        , toEditView(id) {
            window.location.href = "Publico/editar_paciente/" + id;
        },
        toDetalleView(id) {
            window.location.href = "Publico/detalle_paciente/" + id;
        }, Eliminar(id) {



            axios.get('Api/eliminar_pacientes/' + id)
                .then(res => {
                    //this.Categoria();
                    if (res.data == 'success') {
                        Swal('Deleted Post', '', 'info')

                    } else {
                        Swal('Not Deleted!', '', 'info')
                    }

                })
            window.location.href = "Publico/";






        }
    }
});









