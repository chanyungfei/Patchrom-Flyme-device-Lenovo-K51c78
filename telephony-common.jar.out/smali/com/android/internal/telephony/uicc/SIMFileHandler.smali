.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SIMFileHandler"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getEFPath(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEFPath(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "efid"    # I
    .param p2, "is7FFF"    # Z

    .prologue
    .line 51
    const-string v0, "7F20"

    .line 53
    .local v0, "DF_APP":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_0

    .line 54
    const-string v0, "7FFF"

    .line 57
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 96
    const-string v2, "SIMFileHandler"

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    .line 98
    .end local v0    # "DF_APP":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    :sswitch_0
    return-object v0

    .line 60
    .restart local v0    # "DF_APP":Ljava/lang/String;
    :sswitch_1
    const-string v0, "3F007F10"

    goto :goto_0

    .line 63
    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :sswitch_3
    const-string v0, "3F007F20"

    goto :goto_0

    .line 84
    :sswitch_4
    const-string v0, "3F007F20"

    goto :goto_0

    .line 90
    :sswitch_5
    const-string v0, "7FFF7F665F30"

    goto :goto_0

    .line 92
    :sswitch_6
    const-string v0, "3F007F25"

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x2fe2 -> :sswitch_2
        0x4f36 -> :sswitch_5
        0x6f11 -> :sswitch_4
        0x6f13 -> :sswitch_4
        0x6f14 -> :sswitch_4
        0x6f15 -> :sswitch_4
        0x6f16 -> :sswitch_4
        0x6f17 -> :sswitch_4
        0x6f18 -> :sswitch_4
        0x6f22 -> :sswitch_6
        0x6f38 -> :sswitch_3
        0x6f3c -> :sswitch_1
        0x6f3e -> :sswitch_3
        0x6f3f -> :sswitch_0
        0x6f42 -> :sswitch_1
        0x6f46 -> :sswitch_3
        0x6fad -> :sswitch_3
        0x6fb7 -> :sswitch_0
        0x6fc5 -> :sswitch_3
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_3
        0x6fc8 -> :sswitch_3
        0x6fc9 -> :sswitch_3
        0x6fca -> :sswitch_3
        0x6fcb -> :sswitch_3
        0x6fcd -> :sswitch_3
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method
