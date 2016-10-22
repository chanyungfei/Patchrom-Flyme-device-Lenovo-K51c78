.class Lcom/flyme/deviceoriginalsettings/RadioInfo$19;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$19;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$19;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # invokes: Lcom/flyme/deviceoriginalsettings/RadioInfo;->updatePingState()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$4300(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    .line 1061
    return-void
.end method
