.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$4;
.super Ljava/lang/Object;
.source "SvlteRilArbitrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->setDataAllowed(ZLandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

.field final synthetic val$allowed:Z

.field final synthetic val$result:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;ZLandroid/os/Message;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$4;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$4;->val$allowed:Z

    iput-object p3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$4;->val$result:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$4;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->access$300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$4;->val$allowed:Z

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$4;->val$result:Landroid/os/Message;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 193
    return-void
.end method
