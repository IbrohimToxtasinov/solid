// NajoTalim klasi bor. Unda isFavourite nomli maydoni konstruktorda named optional keladi, defalt true. groups nomli tarkibida Group klasi
// obyektlarini saqlaydigan dastlab bo'sh bo'lgan yopiq maydoni bor. _allLearners nomli tarkibida Learner klasi
// obyektlarini saqlaydigan dastlab bo'sh bo'lgan yopiq maydoni bor.  studentCount maydoni yopiq va boshlang'ich qiymat 0.
// 1. Shu klasda addGroup metodi  named parametr bo'lib kelgan Group groups listga qo'shadi.
// 2. removeGroupmetodi addGroup ga teskari ish qiladi va agar group mavjud bo'lmasa false aks holda true qaytaradi.
// 3. getAllCurrentLearnersCount nomli getter ayni vaqtdagi talabalar sonini qaytardi.
// 4. getProudlyLearners bu barcha guruhdagi eng bilimdon talabar listini qaytaradi. 
// 5. c metodi kalit sifatida kurs nomini qiymat sifatida guruhni olgan map qaytaradi.
// 6. Shu o'quv markazdagi talabalr soni eng ko'p va eng kam bo'lgan gruhularni nomini qaytaruvchu metodlar yozing


import 'package:dart_application_1/data/models/group/group_model.dart';

class NajotTalim {
  final bool isFavourite;
  static final List<Group> groups = []; 

  NajotTalim({
    this.isFavourite = false,
  });

  static addGroup(Group group) {
    return groups.add(group);
  }

  static removeGroup(Group group) {
    bool isFound = false;
    for (var i in groups) {
      if (i.groupName == group.groupName) {
        groups.remove(i);
        isFound = true;
        return true;
      }
    }
    if (isFound == false) {
      return false;
    }
  }

  static getAllCurrentLearnersCount(){
    int count = 0;
    for(var i in groups){
      
    }
  }

  static getProudlyLearners() {

  }
  
} 