.class public Lcom/android/internal/telephony/SmsConstants;
.super Ljava/lang/Object;
.source "SmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsConstants$MessageClass;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field public static final FORMAT_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final IS_EMERGENCY_CB_PRIMARY:Ljava/lang/String; = "isPrimary"

.field private static final IS_PRIVACY_PROTECTION_LOCK_SUPPORT:Z

.field private static final IS_WAPPUSH_SUPPORT:Z

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    const-string/jumbo v0, "ro.mtk_privacy_protection_lock"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SmsConstants;->IS_PRIVACY_PROTECTION_LOCK_SUPPORT:Z

    .line 101
    const-string/jumbo v0, "ro.mtk_wappush_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SmsConstants;->IS_WAPPUSH_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static isPrivacyLockSupport()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/internal/telephony/SmsConstants;->IS_PRIVACY_PROTECTION_LOCK_SUPPORT:Z

    return v0
.end method

.method public static isWapPushSupport()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/internal/telephony/SmsConstants;->IS_WAPPUSH_SUPPORT:Z

    return v0
.end method
