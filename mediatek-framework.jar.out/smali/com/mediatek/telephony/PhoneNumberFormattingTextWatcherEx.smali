.class public Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcherEx.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static sFormatType:I


# instance fields
.field private mDeletingBackward:Z

.field private mDeletingHyphen:Z

.field private mFormatting:Z

.field private mHyphenStart:I

.field private sCachedSimIso:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iget-object v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->sCachedSimIso:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getDefaultSimCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->sCachedSimIso:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->sCachedSimIso:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->sFormatType:I

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mFormatting:Z

    if-nez v0, :cond_1

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mFormatting:Z

    .line 79
    iget-boolean v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mDeletingHyphen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mHyphenStart:I

    if-lez v0, :cond_0

    .line 80
    iget-boolean v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mDeletingBackward:Z

    if-eqz v0, :cond_2

    .line 81
    iget v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mHyphenStart:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 82
    iget v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mHyphenStart:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mHyphenStart:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 89
    :cond_0
    :goto_0
    sget v0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->sFormatType:I

    invoke-static {p1, v0}, Lcom/mediatek/telephony/PhoneNumberFormatUtilEx;->formatNumber(Landroid/text/Editable;I)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mFormatting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    monitor-exit p0

    return-void

    .line 84
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mHyphenStart:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 85
    iget v0, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mHyphenStart:I

    iget v1, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mHyphenStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 104
    iget-boolean v2, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mFormatting:Z

    if-nez v2, :cond_0

    .line 106
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 107
    .local v1, "selStart":I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 108
    .local v0, "selEnd":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    if-ne p3, v4, :cond_2

    if-nez p4, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    if-ne v1, v0, :cond_2

    .line 113
    iput-boolean v4, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mDeletingHyphen:Z

    .line 114
    iput p2, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mHyphenStart:I

    .line 116
    add-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_1

    .line 117
    iput-boolean v4, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mDeletingBackward:Z

    .line 125
    .end local v0    # "selEnd":I
    .end local v1    # "selStart":I
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local v0    # "selEnd":I
    .restart local v1    # "selStart":I
    :cond_1
    iput-boolean v5, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mDeletingBackward:Z

    goto :goto_0

    .line 122
    :cond_2
    iput-boolean v5, p0, Lcom/mediatek/telephony/PhoneNumberFormattingTextWatcherEx;->mDeletingHyphen:Z

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 133
    return-void
.end method
