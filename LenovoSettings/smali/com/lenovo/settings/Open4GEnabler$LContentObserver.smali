.class Lcom/lenovo/settings/Open4GEnabler$LContentObserver;
.super Landroid/content/BroadcastReceiver;
.source "Open4GEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/Open4GEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/Open4GEnabler;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/Open4GEnabler;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/lenovo/settings/Open4GEnabler$LContentObserver;->this$0:Lcom/lenovo/settings/Open4GEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 279
    # getter for: Lcom/lenovo/settings/Open4GEnabler;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/settings/Open4GEnabler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "we got intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/lenovo/settings/Open4GEnabler$LContentObserver;->this$0:Lcom/lenovo/settings/Open4GEnabler;

    # getter for: Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/lenovo/settings/Open4GEnabler;->access$100(Lcom/lenovo/settings/Open4GEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 281
    iget-object v0, p0, Lcom/lenovo/settings/Open4GEnabler$LContentObserver;->this$0:Lcom/lenovo/settings/Open4GEnabler;

    # invokes: Lcom/lenovo/settings/Open4GEnabler;->handleUpdateState()V
    invoke-static {v0}, Lcom/lenovo/settings/Open4GEnabler;->access$200(Lcom/lenovo/settings/Open4GEnabler;)V

    .line 282
    iget-object v0, p0, Lcom/lenovo/settings/Open4GEnabler$LContentObserver;->this$0:Lcom/lenovo/settings/Open4GEnabler;

    # getter for: Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/lenovo/settings/Open4GEnabler;->access$100(Lcom/lenovo/settings/Open4GEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/Open4GEnabler$LContentObserver;->this$0:Lcom/lenovo/settings/Open4GEnabler;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 283
    iget-object v0, p0, Lcom/lenovo/settings/Open4GEnabler$LContentObserver;->this$0:Lcom/lenovo/settings/Open4GEnabler;

    # getter for: Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/lenovo/settings/Open4GEnabler;->access$100(Lcom/lenovo/settings/Open4GEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 284
    return-void
.end method
