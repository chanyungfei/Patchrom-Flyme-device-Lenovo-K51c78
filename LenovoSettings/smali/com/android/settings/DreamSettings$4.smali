.class Lcom/flyme/deviceoriginalsettings/DreamSettings$4;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->access$100(Lcom/flyme/deviceoriginalsettings/DreamSettings;)Lcom/flyme/deviceoriginalsettings/DreamBackend;

    move-result-object v1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->access$100(Lcom/flyme/deviceoriginalsettings/DreamSettings;)Lcom/flyme/deviceoriginalsettings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->setActivatedOnSleep(Z)V

    .line 251
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 254
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
