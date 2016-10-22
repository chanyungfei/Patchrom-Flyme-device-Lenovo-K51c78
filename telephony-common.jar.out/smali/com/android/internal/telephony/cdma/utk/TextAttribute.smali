.class public Lcom/android/internal/telephony/cdma/utk/TextAttribute;
.super Ljava/lang/Object;
.source "TextAttribute.java"


# instance fields
.field public align:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

.field public bold:Z

.field public color:Lcom/android/internal/telephony/cdma/utk/TextColor;

.field public italic:Z

.field public length:I

.field public size:Lcom/android/internal/telephony/cdma/utk/FontSize;

.field public start:I

.field public strikeThrough:Z

.field public underlined:Z


# direct methods
.method public constructor <init>(IILcom/android/internal/telephony/cdma/utk/TextAlignment;Lcom/android/internal/telephony/cdma/utk/FontSize;ZZZZLcom/android/internal/telephony/cdma/utk/TextColor;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "align"    # Lcom/android/internal/telephony/cdma/utk/TextAlignment;
    .param p4, "size"    # Lcom/android/internal/telephony/cdma/utk/FontSize;
    .param p5, "bold"    # Z
    .param p6, "italic"    # Z
    .param p7, "underlined"    # Z
    .param p8, "strikeThrough"    # Z
    .param p9, "color"    # Lcom/android/internal/telephony/cdma/utk/TextColor;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->start:I

    .line 53
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->length:I

    .line 54
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->align:Lcom/android/internal/telephony/cdma/utk/TextAlignment;

    .line 55
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->size:Lcom/android/internal/telephony/cdma/utk/FontSize;

    .line 56
    iput-boolean p5, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->bold:Z

    .line 57
    iput-boolean p6, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->italic:Z

    .line 58
    iput-boolean p7, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->underlined:Z

    .line 59
    iput-boolean p8, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->strikeThrough:Z

    .line 60
    iput-object p9, p0, Lcom/android/internal/telephony/cdma/utk/TextAttribute;->color:Lcom/android/internal/telephony/cdma/utk/TextColor;

    .line 61
    return-void
.end method
