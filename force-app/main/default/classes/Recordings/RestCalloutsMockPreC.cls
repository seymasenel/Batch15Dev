public class RestCalloutsMockPreC  implements HttpCalloutMock{
    public HttpResponse respond(HttpRequest request) {
        HttpResponse response = new HttpResponse();
        response.setStatus('OK');
        response.setStatusCode(200);
        response.setBody('[
    {
        "id": 3614598,
        "name": "Divjot Acharya",
        "email": "acharya_divjot@goyette.test",
        "gender": "female",
        "status": "active"
    },
    {
        "id": 3614597,
        "name": "Agnivesh Gupta Ret.",
        "email": "agnivesh_gupta_ret@bogan.example",
        "gender": "female",
        "status": "active"
    },
    {
        "id": 3614596,
        "name": "Ekalavya Kaniyar DVM",
        "email": "dvm_kaniyar_ekalavya@casper.test",
        "gender": "female",
        "status": "active"
    },
    {
        "id": 3614595,
        "name": "Jagmeet Varma",
        "email": "varma_jagmeet@jakubowski.test",
        "gender": "female",
        "status": "inactive"
    },
    {
        "id": 3614594,
        "name": "Mr. Akshita Varma",
        "email": "akshita_mr_varma@west.test",
        "gender": "female",
        "status": "inactive"
    },
    {
        "id": 3614591,
        "name": "Msgr. Gorakhnath Devar",
        "email": "devar_msgr_gorakhnath@huel-cronin.example",
        "gender": "male",
        "status": "active"
    },
    {
        "id": 3614590,
        "name": "Chakravarti Ganaka",
        "email": "ganaka_chakravarti@collier.example",
        "gender": "male",
        "status": "inactive"
    },
    {
        "id": 3614589,
        "name": "Samir Talwar",
        "email": "samir_talwar@mueller.example",
        "gender": "male",
        "status": "inactive"
    },
    {
        "id": 3614588,
        "name": "Saraswati Nayar",
        "email": "nayar_saraswati@hermann.example",
        "gender": "female",
        "status": "active"
    },
    {
        "id": 3614587,
        "name": "Dakshayani Pothuvaal",
        "email": "dakshayani_pothuvaal@gerhold-grady.example",
        "gender": "female",
        "status": "inactive"
    }
]');
        return response;
    }
}