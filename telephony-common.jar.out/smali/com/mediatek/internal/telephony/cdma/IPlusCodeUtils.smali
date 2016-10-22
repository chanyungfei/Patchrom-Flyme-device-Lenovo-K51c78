.class public interface abstract Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
.super Ljava/lang/Object;
.source "IPlusCodeUtils.java"


# static fields
.field public static final PROPERTY_ICC_CDMA_OPERATOR_MCC:Ljava/lang/String; = "cdma.icc.operator.mcc"

.field public static final PROPERTY_OPERATOR_MCC:Ljava/lang/String; = "cdma.operator.mcc"

.field public static final PROPERTY_OPERATOR_SID:Ljava/lang/String; = "cdma.operator.sid"

.field public static final PROPERTY_TIME_LTMOFFSET:Ljava/lang/String; = "cdma.operator.ltmoffset"


# virtual methods
.method public abstract canFormatPlusCodeForSms()Z
.end method

.method public abstract canFormatPlusToIddNdd()Z
.end method

.method public abstract checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract replacePlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;
.end method
