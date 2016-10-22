.class Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;
.super Ljava/lang/Object;
.source "AccountSettingsOptionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileData"
.end annotation


# instance fields
.field public addAccountPreference:Landroid/preference/Preference;

.field public authenticatorHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

.field public preferenceGroup:Landroid/preference/PreferenceGroup;

.field public userInfo:Landroid/content/pm/UserInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$1;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettingsOptionMenu$ProfileData;-><init>()V

    return-void
.end method
