.class Lcom/mediatek/internal/telephony/uicc/SvlteUiccController$SingletonHolder;
.super Ljava/lang/Object;
.source "SvlteUiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 253
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;-><init>(Lcom/mediatek/internal/telephony/uicc/SvlteUiccController$1;)V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController$SingletonHolder;->INSTANCE:Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
