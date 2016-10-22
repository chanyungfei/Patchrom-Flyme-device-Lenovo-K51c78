.class public Lcom/flyme/deviceoriginalsettings/WarnedListPreference;
.super Landroid/preference/ListPreference;
.source "WarnedListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "entries":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 35
    .local v7, "values":[Ljava/lang/String;
    array-length v8, v3

    new-array v5, v8, [Ljava/lang/CharSequence;

    .line 37
    .local v5, "outEntries":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 38
    .local v2, "currentScale":F
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 40
    .local v1, "curConf":Landroid/content/res/Configuration;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 45
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_0

    .line 46
    new-instance v0, Landroid/text/SpannableString;

    aget-object v8, v3, v4

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 47
    .local v0, "buffer":Landroid/text/SpannableString;
    aget-object v8, v7, v4

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v6, v8, v2

    .line 48
    .local v6, "size":F
    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v8, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v9, 0x0

    aget-object v10, v3, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 49
    aput-object v0, v5, v4

    .line 45
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 51
    .end local v0    # "buffer":Landroid/text/SpannableString;
    .end local v6    # "size":F
    :cond_0
    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/WarnedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 53
    return-void

    .line 41
    .end local v4    # "i":I
    :catch_0
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method public click()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    .line 62
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
