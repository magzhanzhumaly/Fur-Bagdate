//
//  AppEnums.swift
//  Will you be my girlfriend
//
//  Created by Magzhan Zhumaly on 23.01.2024.
//

import UIKit
import AVFoundation


enum NoMessages {
    case podumaizanovo
    case podumaihoroshenko
    case netoropis
    case choosewisely
    case mimo
    case nublin
    
    var str: String {
        switch self {
            
        case .podumaizanovo:
            return "Подумай заново😠"
        case .podumaihoroshenko:
            return "Подумай хорошенько😭"
        case .netoropis:
            return "Не торопись🥺"
        case .choosewisely:
            return "CHOOSE WISELY😩"
        case .mimo:
            return "МИМО!💀💀"
        case .nublin:
            return "Ну блииин💔💔"
        }
    }
    
    static var allCases: [NoMessages] {
        return [.podumaizanovo, .podumaihoroshenko, .netoropis, .choosewisely, .mimo, .nublin]
        // Include all enum cases here
    }
}

enum YesMessages {
    case uti
    case yatakiznal
    case dokazhivnovo
    case hehehe
    case ura
    case zhanymsol
    case yatebyanepodvedu
    case yavestvoi
    case oohlala
    
    var str: String {
        switch self {
            
        case .uti:
            return "Утиии🥰"
        case .yatakiznal:
            return "Я так и знал!🤭"
        case .dokazhivnovo:
            return "Докажи заново🫣"
        case .hehehe:
            return "ХЕХЕХЕХ☺️"
        case .ura:
            return "Ураа🥳"
        case .zhanymsol:
            return "Жаным сол😇"
        case .yatebyanepodvedu:
            return "Я тебя не подведу❤️❤️"
        case .yavestvoi:
            return "Я весь твой🫦"
        case .oohlala:
            return "Уляляя👀"
        }
    }
    
    static var allCases: [YesMessages] {
        return [.uti, .yatakiznal, .dokazhivnovo, .hehehe, .ura, .zhanymsol, .yatebyanepodvedu, .yavestvoi, .oohlala]
        // Include all enum cases here
    }
}

enum SadSenya {
    case dontletgo
    case holdingtears
    case scream
    case please
    case tlen
    
    var img: UIImage {
        switch self {
            
        case .dontletgo:
            return UIImage(named: "dontletgo")!
        case .holdingtears:
            return UIImage(named: "holdingtears")!
        case .scream:
            return UIImage(named: "scream")!
        case .please:
            return UIImage(named: "please")!
        case .tlen:
            return UIImage(named: "tlen")!
        }
    }
    
    static var allCases: [SadSenya] {
        return [.dontletgo, .holdingtears, .scream, .please, .tlen]
        // Include all enum cases here
    }
}

enum HappySenya {
    case aww
    case celebrating
    case cuteembarrassment
    case eighteenplus
    case handheart
    case happyteardrop
    case hearthead
    case hooray
    case kissed
    case muah
    
    var img: UIImage {
        switch self {
            
        case .aww:
            return UIImage(named: "aww")!
        case .celebrating:
            return UIImage(named: "celebrating")!
        case .cuteembarrassment:
            return UIImage(named: "cuteembarrassment")!
        case .eighteenplus:
            return UIImage(named: "eighteenplus")!
        case .handheart:
            return UIImage(named: "handheart")!
        case .happyteardrop:
            return UIImage(named: "happyteardrop")!
        case .hearthead:
            return UIImage(named: "hearthead")!
        case .hooray:
            return UIImage(named: "hooray")!
        case .kissed:
            return UIImage(named: "kissed")!
        case .muah:
            return UIImage(named: "muah")!
        }
    }
    
    static var allCases: [HappySenya] {
        return [.aww, .celebrating, .cuteembarrassment, .eighteenplus, .handheart, .happyteardrop, .hearthead, .hooray, kissed, .muah]
        // Include all enum cases here
    }
}

enum MissedSenya {
    case confused
    case goodforyou
    case thumbsup
    
    var result: (UIImage, String) {
        switch self {

        case .confused:
            return (UIImage(named: "confused")!, "Ты, наверное, хотела нажать на да, но промахнулась...")
        case .goodforyou:
            return (UIImage(named: "goodforyou")!, "Не переживай, ты еще попадешь!")
        case .thumbsup:
            return (UIImage(named: "thumbsup")!, "Постарайся попасть еще раз :)")
        }
    }
    
    static var allCases: [MissedSenya] {
        return [.confused, .goodforyou, .thumbsup]
    }
}

public enum Colors {
    
    case danger50
    case danger100
    case danger200
    case danger300
    case danger400
    case danger500
    case danger600
    case danger700
    case danger800
    case danger900
    
    case gray50
    case gray100
    case gray200
    case gray300
    case gray400
    case gray500
    case gray600
    case gray700
    case gray800
    case gray900
    
    case other
    case bg
    case accentColor
    case accentColorLight
    case inactive
    
    case primary50
    case primary100
    case primary200
    case primary300
    case primary400
    case primary500
    case primary600
    case primary700
    case primary800
    case primary900
    
    case success50
    case success100
    case success200
    case success300
    case success400
    case success500
    case success600
    case success700
    case success800
    case success900
    
    case warning50
    case warning100
    case warning200
    case warning300
    case warning400
    case warning500
    case warning600
    case warning700
    case warning800
    case warning900
    
    var color: UIColor {
        switch self {
        case .danger50:
            return UIColor(named: "Danger-50") ?? .white
        case .danger100:
            return UIColor(named: "Danger-100") ?? .white
        case .danger200:
            return UIColor(named: "Danger-200") ?? .white
        case .danger300:
            return UIColor(named: "Danger-300") ?? .white
        case .danger400:
            return UIColor(named: "Danger-400") ?? .white
        case .danger500:
            return UIColor(named: "Danger-500") ?? .white
        case .danger600:
            return UIColor(named: "Danger-600") ?? .white
        case .danger700:
            return UIColor(named: "Danger-700") ?? .white
        case .danger800:
            return UIColor(named: "Danger-800") ?? .white
        case .danger900:
            return UIColor(named: "Danger-900") ?? .white
        case .gray50:
            return UIColor(named: "Gray-50") ?? .white
        case .gray100:
            return UIColor(named: "Gray-100") ?? .white
        case .gray200:
            return UIColor(named: "Gray-200") ?? .white
        case .gray300:
            return UIColor(named: "Gray-300") ?? .white
        case .gray400:
            return UIColor(named: "Gray-400") ?? .white
        case .gray500:
            return UIColor(named: "Gray-500") ?? .white
        case .gray600:
            return UIColor(named: "Gray-600") ?? .white
        case .gray700:
            return UIColor(named: "Gray-700") ?? .white
        case .gray800:
            return UIColor(named: "Gray-800") ?? .white
        case .gray900:
            return UIColor(named: "Gray-900") ?? .white
        case .other:
            return UIColor(named: "Other") ?? .white
        case .bg:
            return UIColor(red: 242, green: 245, blue: 249, alpha: 1)
        case .primary50:
            return UIColor(named: "Primary-50") ?? .white
        case .primary100:
            return UIColor(named: "Primary-100") ?? .white
        case .primary200:
            return UIColor(named: "Primary-200") ?? .white
        case .primary300:
            return UIColor(named: "Primary-300") ?? .white
        case .primary400:
            return UIColor(named: "Primary-400") ?? .white
        case .primary500:
            return UIColor(named: "Primary-500") ?? .white
        case .primary600:
            return UIColor(named: "Primary-600") ?? .white
        case .primary700:
            return UIColor(named: "Primary-700") ?? .white
        case .primary800:
            return UIColor(named: "Primary-800") ?? .white
        case .primary900:
            return UIColor(named: "Primary-900") ?? .white
        case .success50:
            return UIColor(named: "Success-50") ?? .white
        case .success100:
            return UIColor(named: "Success-100") ?? .white
        case .success200:
            return UIColor(named: "Success-200") ?? .white
        case .success300:
            return UIColor(named: "Success-300") ?? .white
        case .success400:
            return UIColor(named: "Success-400") ?? .white
        case .success500:
            return UIColor(named: "Success-500") ?? .white
        case .success600:
            return UIColor(named: "Success-600") ?? .white
        case .success700:
            return UIColor(named: "Success-700") ?? .white
        case .success800:
            return UIColor(named: "Success-800") ?? .white
        case .success900:
            return UIColor(named: "Success-900") ?? .white
        case .warning50:
            return UIColor(named: "Warning-50") ?? .white
        case .warning100:
            return UIColor(named: "Warning-100") ?? .white
        case .warning200:
            return UIColor(named: "Warning-200") ?? .white
        case .warning300:
            return UIColor(named: "Warning-300") ?? .white
        case .warning400:
            return UIColor(named: "Warning-400") ?? .white
        case .warning500:
            return UIColor(named: "Warning-500") ?? .white
        case .warning600:
            return UIColor(named: "Warning-600") ?? .white
        case .warning700:
            return UIColor(named: "Warning-700") ?? .white
        case .warning800:
            return UIColor(named: "Warning-800") ?? .white
        case .warning900:
            return UIColor(named: "Warning-900") ?? .white
        case .accentColor:
            return UIColor(named: "AccentColor") ?? .white
        case .accentColorLight:
            return UIColor(named: "AccentColorLight") ?? .white
        case .inactive:
            return UIColor(named: "Inactive") ?? .white
        }
    }
}

public extension UIColor {
    static func fromName(_ colorName: Colors) -> UIColor {
        colorName.color
    }
}



public enum Fonts {
    
    case largeTitleBold34
    case title1Bold28
    case title2Bold22
    case title3Bold20
    case headline17
    case calloutBold16
    case subheadlineBold15
    case footnoteBold13
    case caption1Bold12
    case caption2Bold11
    
    case largeTitleRegular34
    case title1Regular28
    case title2Regular22
    case title3Regular20
    case body17
    case calloutRegular16
    case subheadlineRegular15
    case footnoteRegular13
    case caption1Regular12
    case caption2Regular11
    
    private var fontSize: CGFloat {
        switch self {
        case .largeTitleBold34, .largeTitleRegular34: // height 41
            return 34
        case .title1Bold28, .title1Regular28: // height 34
            return 28
        case .title2Bold22, .title2Regular22: // height 28
            return 22
        case .title3Bold20, .title3Regular20: // height 24
            return 20
        case .headline17, .body17: // height 22
            return 17
        case .calloutBold16, .calloutRegular16: // height 21
            return 16
        case .subheadlineBold15, .subheadlineRegular15: // height 20
            return 15
        case .footnoteBold13, .footnoteRegular13: // height 18
            return 13
        case .caption1Bold12, .caption1Regular12: // height 16
            return 12
        case .caption2Bold11, .caption2Regular11: // height 13
            return 11
        }
    }
    
    private var fontName: String {
        switch self {
        case .largeTitleBold34, .title1Bold28, .title2Bold22, .title3Bold20, .headline17, .calloutBold16, .subheadlineBold15, .footnoteBold13, .caption1Bold12, .caption2Bold11:
            //            return "Inter-SemiBold"
//            return "Inter-ExtraBold"
            return "LeckerliOne-Regular"

        case .largeTitleRegular34, .title1Regular28, .title2Regular22, .title3Regular20, .body17, .calloutRegular16, .subheadlineRegular15, .footnoteRegular13, .caption1Regular12, .caption2Regular11:
//            return "Inter-Regular"
            return "LeckerliOne-Regular"

        }
    }
    
    var font: UIFont {
        UIFont(name: fontName, size: fontSize) ?? .systemFont(ofSize: fontSize)
    }
}

//LeckerliOne-Regular.ttf

enum Vibration {
    case error
    case success
    case warning
    case light
    case medium
    case heavy
    @available(iOS 13.0, *)
    case soft
    @available(iOS 13.0, *)
    case rigid
    case selection
    case oldSchool
    
    public func vibrate() {
        switch self {
        case .error:
            UINotificationFeedbackGenerator().notificationOccurred(.error)
        case .success:
            UINotificationFeedbackGenerator().notificationOccurred(.success)
        case .warning:
            UINotificationFeedbackGenerator().notificationOccurred(.warning)
        case .light:
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
        case .medium:
            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
        case .heavy:
            UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
        case .soft:
            if #available(iOS 13.0, *) {
                UIImpactFeedbackGenerator(style: .soft).impactOccurred()
            }
        case .rigid:
            if #available(iOS 13.0, *) {
                UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
            }
        case .selection:
            UISelectionFeedbackGenerator().selectionChanged()
        case .oldSchool:
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
        }
    }
}
