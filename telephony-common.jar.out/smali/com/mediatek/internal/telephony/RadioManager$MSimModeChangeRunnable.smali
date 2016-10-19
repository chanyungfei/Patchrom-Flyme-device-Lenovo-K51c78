.class Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSimModeChangeRunnable"
.end annotation


# instance fields
.field mRetryMode:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/RadioManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/RadioManager;I)V
    .locals 0
    .param p2, "mode"    # I

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1382
    iput p2, p0, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;->mRetryMode:I

    .line 1383
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager$MSimModeChangeRunnable;->mRetryMode:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->notifyMSimModeChange(I)V

    .line 1387
    return-void
.end method
