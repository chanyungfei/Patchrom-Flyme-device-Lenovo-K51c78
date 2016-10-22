.class Lcom/flyme/deviceoriginalsettings/MediaFormat$2;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/MediaFormat;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat$2;->this$0:Lcom/flyme/deviceoriginalsettings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat$2;->this$0:Lcom/flyme/deviceoriginalsettings/MediaFormat;

    const/16 v1, 0x37

    # invokes: Lcom/flyme/deviceoriginalsettings/MediaFormat;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->access$100(Lcom/flyme/deviceoriginalsettings/MediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat$2;->this$0:Lcom/flyme/deviceoriginalsettings/MediaFormat;

    # invokes: Lcom/flyme/deviceoriginalsettings/MediaFormat;->establishFinalConfirmationState()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->access$200(Lcom/flyme/deviceoriginalsettings/MediaFormat;)V

    .line 134
    :cond_0
    return-void
.end method
