.class public Lcom/android/settings/LenovoFacebook;
.super Ljava/lang/Object;
.source "LenovoFacebook.java"


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.facebook.auth.login"

.field private static final LENOVO_FACEBOOK_AUTHORITY:Ljava/lang/String; = "com.lenovo.facebook.provider"

.field private static final LENOVO_FACEBOOK_CONTENT_URI:Landroid/net/Uri;

.field public static final STATUS_EXPIRES:I = 0x3

.field public static final STATUS_INVALID:I = 0x0

.field public static final STATUS_NO_SIGN_ON:I = 0x1

.field public static final STATUS_UNKNOWN_ERROR:I = 0x4

.field public static final STATUS_VALID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LenovoFacebook"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "content://com.lenovo.facebook.provider/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/LenovoFacebook;->LENOVO_FACEBOOK_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAuthenticatorSettings(Landroid/content/Context;Landroid/preference/PreferenceManager;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/preference/PreferenceManager;
    .param p2, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "prefs":Landroid/preference/PreferenceScreen;
    const v2, 0x7f060018

    invoke-virtual {p1, p0, v2, p2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 63
    invoke-static {p0}, Lcom/android/settings/LenovoFacebook;->getLenovoFacebookAccountStatus(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 64
    const-string v2, "try_sso_again"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 65
    .local v0, "preference":Landroid/preference/Preference;
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 67
    .end local v0    # "preference":Landroid/preference/Preference;
    :cond_0
    return-object v1
.end method

.method public static getFacebookAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "com.facebook.auth.login"

    return-object v0
.end method

.method public static getLenovoFacebookAccountStatus(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 46
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "STATUS"

    aput-object v1, v2, v0

    .line 47
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/LenovoFacebook;->LENOVO_FACEBOOK_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 49
    .local v6, "cur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 50
    .local v8, "status":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 51
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v8    # "status":I
    :goto_0
    return v8

    .line 54
    :catch_0
    move-exception v7

    .line 55
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "LenovoFacebook"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 57
    goto :goto_0
.end method
