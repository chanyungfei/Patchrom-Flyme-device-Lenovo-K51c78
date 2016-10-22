.class Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;
.super Lcom/android/internal/util/State;
.source "EpdgConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgRetryingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/epdg/EpdgConnection;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p2, "x1"    # Lcom/mediatek/epdg/EpdgConnection$1;

    .prologue
    .line 1019
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;-><init>(Lcom/mediatek/epdg/EpdgConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 1023
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1027
    const/4 v0, 0x0

    return v0
.end method
