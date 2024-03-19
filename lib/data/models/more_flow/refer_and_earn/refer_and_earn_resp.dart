class ReferAndEarnResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  ReferAndEarnResp({this.result, this.status, this.message, this.jSONData});

  ReferAndEarnResp.fromJson(Map<String, dynamic> json) {
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
  String? id;
  String? mobileNo;
  String? name;
  String? walletAmount;
  String? rearnedRewardAmount;
  String? totalReferred;
  String? totalRegistred;
  String? earnedUpto;
  String? currencySymbol;
  String? currencyLogo;
  String? myReferalCode;
  List<RewardList>? rewardList;

  JSONData(
      {this.id,
      this.mobileNo,
      this.name,
      this.walletAmount,
      this.rearnedRewardAmount,
      this.totalReferred,
      this.totalRegistred,
      this.earnedUpto,
      this.currencySymbol,
      this.currencyLogo,
      this.myReferalCode,
      this.rewardList});

  JSONData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mobileNo = json['mobile_no'];
    name = json['name'];
    walletAmount = json['wallet_amount'];
    rearnedRewardAmount = json['rearned_reward_Amount'];
    totalReferred = json['total_referred'];
    totalRegistred = json['total_registred'];
    earnedUpto = json['earned_upto'];
    currencySymbol = json['currency_symbol'];
    currencyLogo = json['currency_logo'];
    myReferalCode = json['my_referal_code'];
    if (json['reward_list'] != null) {
      rewardList = <RewardList>[];
      json['reward_list'].forEach((v) {
        rewardList!.add(new RewardList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mobile_no'] = this.mobileNo;
    data['name'] = this.name;
    data['wallet_amount'] = this.walletAmount;
    data['rearned_reward_Amount'] = this.rearnedRewardAmount;
    data['total_referred'] = this.totalReferred;
    data['total_registred'] = this.totalRegistred;
    data['earned_upto'] = this.earnedUpto;
    data['currency_symbol'] = this.currencySymbol;
    data['currency_logo'] = this.currencyLogo;
    data['my_referal_code'] = this.myReferalCode;
    if (this.rewardList != null) {
      data['reward_list'] = this.rewardList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RewardList {
  String? userName;
  String? userMobile;
  String? rewardAmount;
  String? rewardTime;
  String? rewardNote;
  String? rewardNoteUnix;

  RewardList(
      {this.userName,
      this.userMobile,
      this.rewardAmount,
      this.rewardTime,
      this.rewardNote,
      this.rewardNoteUnix});

  RewardList.fromJson(Map<String, dynamic> json) {
    userName = json['user_name'];
    userMobile = json['user_mobile'];
    rewardAmount = json['reward_amount'];
    rewardTime = json['reward_time'];
    rewardNote = json['reward_note'];
    rewardNoteUnix = json['reward_note_unix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_name'] = this.userName;
    data['user_mobile'] = this.userMobile;
    data['reward_amount'] = this.rewardAmount;
    data['reward_time'] = this.rewardTime;
    data['reward_note'] = this.rewardNote;
    data['reward_note_unix'] = this.rewardNoteUnix;
    return data;
  }
}
