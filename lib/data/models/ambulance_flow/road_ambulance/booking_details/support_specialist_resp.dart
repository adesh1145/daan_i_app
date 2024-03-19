class SupportSpecialistResp {
    String? result;
    String? status;
    String? message;
    List<JSONData>? jSONData;

    SupportSpecialistResp(
        {this.result, this.status, this.message, this.jSONData});

    SupportSpecialistResp.fromJson(Map<String, dynamic> json) {
        result = json['result'];
        status = json['status'];
        message = json['Message'];
        if (json['JSONData'] != null) {
            jSONData = <JSONData>[];
            json['JSONData'].forEach((v) {
                jSONData!.add(new JSONData.fromJson(v));
            });
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['result'] = this.result;
        data['status'] = this.status;
        data['Message'] = this.message;
        if (this.jSONData != null) {
            data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class JSONData {
    String? specialistsStatus;
    String? specialistsStatusTxt;
    String? specialistsStatusRemove;
    String? txt;

    JSONData(
        {this.specialistsStatus,
            this.specialistsStatusTxt,
            this.specialistsStatusRemove,
            this.txt});

    JSONData.fromJson(Map<String, dynamic> json) {
        specialistsStatus = json['specialists_status'];
        specialistsStatusTxt = json['specialists_status_txt'];
        specialistsStatusRemove = json['specialists_status_remove'];
        txt = json['txt'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['specialists_status'] = this.specialistsStatus;
        data['specialists_status_txt'] = this.specialistsStatusTxt;
        data['specialists_status_remove'] = this.specialistsStatusRemove;
        data['txt'] = this.txt;
        return data;
    }
}
