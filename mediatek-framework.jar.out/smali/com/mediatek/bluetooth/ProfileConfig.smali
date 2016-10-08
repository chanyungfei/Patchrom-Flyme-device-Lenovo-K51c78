.class public Lcom/mediatek/bluetooth/ProfileConfig;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# static fields
.field public static final PROFILE_ID_BIP:Ljava/lang/String; = "profile_supported_bip"

.field public static final PROFILE_ID_BPP:Ljava/lang/String; = "profile_supported_bpp"

.field public static final PROFILE_ID_DUN:Ljava/lang/String; = "profile_supported_dun"

.field public static final PROFILE_ID_FMOVERBT:Ljava/lang/String; = "profile_supported_fmoverbt"

.field public static final PROFILE_ID_FTP:Ljava/lang/String; = "profile_supported_ftp"

.field public static final PROFILE_ID_MAPC:Ljava/lang/String; = "profile_supported_mapc"

.field public static final PROFILE_ID_MAPS:Ljava/lang/String; = "profile_supported_maps"

.field public static final PROFILE_ID_PRXM:Ljava/lang/String; = "profile_supported_prxm"

.field public static final PROFILE_ID_PRXR:Ljava/lang/String; = "profile_supported_prxr"

.field public static final PROFILE_ID_SIMAP:Ljava/lang/String; = "profile_supported_simap"

.field public static final PROFILE_ID_TIMEC:Ljava/lang/String; = "profile_supported_timec"

.field public static final PROFILE_ID_TIMES:Ljava/lang/String; = "profile_supported_times"

.field private static final TAG:Ljava/lang/String; = "ProfileConfig"


# instance fields
.field private profileEnabled:Z

.field private profileID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public getProfileEnabled()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/ProfileConfig;->profileEnabled:Z

    return v0
.end method

.method public getProfileID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/bluetooth/ProfileConfig;->profileID:Ljava/lang/String;

    return-object v0
.end method

.method public setProfileEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/ProfileConfig;->profileEnabled:Z

    .line 90
    return-void
.end method

.method public setProfileID(Ljava/lang/String;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mediatek/bluetooth/ProfileConfig;->profileID:Ljava/lang/String;

    .line 80
    return-void
.end method
