//
//  StructOrgView.swift
//  AliClone
//
//  Created by Aisa Utomo on 17/08/23.
//

import SwiftUI

struct StructOrgView: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("Struktur Organisasi")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding([.leading,.top
                                 ], 20)

                    Spacer()
                }
                
                StructOrgOneView()

                StructOrgTwoView()
            }

        }
    }
}

struct StructOrgView_Previews: PreviewProvider {
    static var previews: some View {
        StructOrgView()
    }
}

struct StructOrgOneView: View {
    var body: some View {
        VStack{
            TitleWDetView(titleDiv: "Dewan Penasihat", firstMemberName: "Ary Yunanto CR-0008", secondMemberName: "Marseli Ricardo CR-0005")
            
            TitleWDetSingView(titleDiv: "Ketua Umum", memberName: "Reza Phalevi Mahardika Putra CR-0003")
            TitleWDetSingView(titleDiv: "Wakil Ketua Umum", memberName: "Febrian Bhonta CR-0006")
            TitleWDetSingView(titleDiv: "Sekretaris Umum", memberName: "Banu Pradipta CR-0010")
            TitleWDetSingView(titleDiv: "Bendahara Umum", memberName: "Tatit Eksana Putra CR-0313")
            
            TitleWDetView(titleDiv: "Membership", firstMemberName: "Joseph Aditya Agriarto CR-0028", secondMemberName: "Putra Ramdhani CR-0158")

            TitleWDetSingView(titleDiv: "Technical", memberName: "Danny Karjo CR-0045")
            
            TitleWDetView(titleDiv: "Merchant Partnership", firstMemberName: "Theodorus Renato Ardiano CR-0080", secondMemberName: "Alan Tan CR-0301")
        }
    }
}

struct StructOrgOneView_Previews: PreviewProvider {
    static var previews: some View {
        StructOrgOneView()
    }
}

struct StructOrgTwoView: View {
    var body: some View {
        VStack{
            TitleWDetSingView(titleDiv: "Legal", memberName: "Calvin Pratama CR-0149")
            TitleWDetSingView(titleDiv: "Event & CSR", memberName: "Tikala Sompie CR-0030")

            TitleWDetView(titleDiv: "Web Developer & Database Administrator", firstMemberName: "Surya Darma CR-0020", secondMemberName: "Eka Praditya Giovanni Karim CR-0729")
            TitleWDetView(titleDiv: "Social Media", firstMemberName: "Brenda Firsty CR-0317", secondMemberName: "Ananda Putra CR-0285")
            TitleWDetView(titleDiv: "Merchandise & Starter Kit", firstMemberName: "Merchandise & Starter Kit", secondMemberName: "Rin Mulyadi CR-0219")

        }
    }
}

struct StructOrgTwoView_Previews: PreviewProvider {
    static var previews: some View {
        StructOrgTwoView()
    }
}
