.class public Lcom/lenovo/settings/SmartRotationSetting;
.super Ljava/lang/Object;
.source "SmartRotationSetting.java"


# static fields
.field private static final KEY_SMART_ROTATION:Ljava/lang/String; = "smart_rotation"

.field private static final SCREEN_SMART_ROTATION:Ljava/lang/String; = "screen_smart_rotation"

.field public static final SMART_ROTATION_DEFAULT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SmartRotationSetting"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mcontext"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/lenovo/settings/SmartRotationSetting;->context:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public getSmartRoationValue(Landroid/content/ContentResolver;)I
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 34
    const-string v1, "screen_smart_rotation"

    const/4 v2, 0x3

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, "currentValue":I
    return v0
.end method

.method public updateSmartRotation(Landroid/preference/ListPreference;Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "mSmartRotationPref"    # Landroid/preference/ListPreference;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 73
    const-string v1, "screen_smart_rotation"

    const/4 v2, 0x3

    invoke-static {p2, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "value":I
    invoke-virtual {p0, v0, p1}, Lcom/lenovo/settings/SmartRotationSetting;->updateSmartRotationPreference(ILandroid/preference/ListPreference;)V

    .line 77
    return-void
.end method

.method public updateSmartRotationPreference(ILandroid/preference/ListPreference;)V
    .locals 6
    .param p1, "currentSmartRotation"    # I
    .param p2, "mSmartRotationPref"    # Landroid/preference/ListPreference;

    .prologue
    .line 79
    const-string v3, "SmartRotationSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartRotationPreference="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/settings/SmartRotationSetting;->updateSmartRotationPreferenceDescription(ILandroid/preference/ListPreference;)V

    .line 82
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 83
    .local v1, "dlg":Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 87
    .local v2, "listview":Landroid/widget/ListView;
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "checkedItem":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 91
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public updateSmartRotationPreferenceDescription(ILandroid/preference/ListPreference;)V
    .locals 8
    .param p1, "currentSmartRotation"    # I
    .param p2, "mSmartRotationPref"    # Landroid/preference/ListPreference;

    .prologue
    .line 42
    move-object v3, p2

    .line 44
    .local v3, "preference":Landroid/preference/ListPreference;
    if-gez p1, :cond_0

    .line 46
    const-string v5, ""

    .line 70
    .local v5, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    return-void

    .line 48
    .end local v5    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 49
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 50
    .local v6, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v7, v1

    if-nez v7, :cond_2

    .line 51
    :cond_1
    const-string v5, ""

    .restart local v5    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 53
    .end local v5    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 54
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_4

    .line 55
    aget-object v7, v6, v2

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 56
    .local v4, "rotationMode":I
    if-ne p1, v4, :cond_3

    .line 57
    move v0, v2

    .line 54
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61
    .end local v4    # "rotationMode":I
    :cond_4
    array-length v7, v1

    if-eqz v7, :cond_5

    .line 62
    aget-object v7, v1, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 64
    .end local v5    # "summary":Ljava/lang/String;
    :cond_5
    const-string v5, ""

    .restart local v5    # "summary":Ljava/lang/String;
    goto :goto_0
.end method
