//
//  GalleryCresnaTNView.swift
//  AliClone
//
//  Created by Aisa Utomo on 18/08/23.
//

import SwiftUI

struct GalleryCresnaTNView: View {
    var body: some View {
        VStack{
            GalleryCresnaTNLeImageView()
            GalleryCresnaTNRiImageView()
        }
    }
}

struct GalleryCresnaTNView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryCresnaTNView()
    }
}

struct GalleryCresnaTNLeImageView: View {
    
    @State var TitleImage : String = "Cresna Meetup 2023: Mengejar Prambanan"
    @State var ContentImage : String = "Komunitas Hyundai Creta pertama dan terbesar di Indonesia atau yang lebih dikenal dengan Creta Society Nusantara (Cresna), mengadakan touring dan ..."
    @State var DateImage : String = "Cresna 6 Juli 2023"

    var body: some View {
        Button {
            print("test")
        } label: {
            VStack{
                HStack{
                    AsyncImage(url: URL(string: "https://cresna.id/wp-content/uploads/2023/07/RK-2-102-905x613.jpg"), content: {image in image.resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.all)
                            .frame(width: deviceWidth/3.5)
                    },
                               placeholder: {
                                   ProgressView()
                               })

                    VStack{
                        HStack{
                            Text(TitleImage)
                                .font(.system(size: 10, weight: .bold))
                            Spacer()
                        }
                        .padding(.bottom, 5)
                        HStack{
                            Text(ContentImage)
                                .font(.system(size: 10, weight: .regular))
                                .multilineTextAlignment(.leading)

                            Spacer()
                        }
                        HStack{
                            Text(DateImage)
                                .font(.system(size: 10, weight: .ultraLight))

                            Spacer()
                        }
                    }
                    Spacer()
                }
            }
            .foregroundColor(.black)
            .padding()
            .background(.white)
            .cornerRadius(10)
            .padding([.bottom,.horizontal])
        }
    }
}

struct GalleryCresnaTNLeImageView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryCresnaTNLeImageView()
    }
}

struct GalleryCresnaTNRiImageView: View {
    @State var TitleImage : String = "Rangkaian Agenda Akhir Tahun Cresna"
    @State var ContentImage : String = "CSR Natal 2022: “Give with Cresna: A December to Remember” dan Kopdar Akbar Cresna Wilayah Periangan dan Jabodetabek: “Silaturasa Kopdar ..."
    @State var DateImage : String = "Cresna 21 Desember 2022"

    var body: some View {
        Button {
            print("test")
        } label: {
            VStack{
                HStack{
                    Spacer()

                    VStack{
                        HStack{
                            Text(TitleImage)
                                .font(.system(size: 10, weight: .bold))
                            Spacer()
                        }
                        .padding(.bottom, 5)
                        HStack{
                            Text(ContentImage)
                                .font(.system(size: 10, weight: .regular))
                                .multilineTextAlignment(.leading)

                            Spacer()
                        }
                        HStack{
                            Text(DateImage)
                                .font(.system(size: 10, weight: .ultraLight))

                            Spacer()
                        }
                    }
                    
                    AsyncImage(url: URL(string: "https://cresna.id/wp-content/uploads/2022/12/cresna-des-2022-1-905x613.jpg"), content: {image in image.resizable()
                            .scaledToFit()
                            .edgesIgnoringSafeArea(.all)
                            .frame(width: deviceWidth/3.5)
                    },
                               placeholder: {
                                   ProgressView()
                               })
                }
            }
            .foregroundColor(.black)
            .padding()
            .background(.white)
            .cornerRadius(10)
            .padding([.bottom,.horizontal])
        }
    }
}

struct GalleryCresnaTNRiImageView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryCresnaTNRiImageView()
    }
}
