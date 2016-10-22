.class Lcom/android/settings/DreamSettings$4;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings/DreamSettings$4;->this$0:Lcom/android/settings/DreamSettings;

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
    iget-object v0, p0, Lcom/android/settings/DreamSettings$4;->this$0:Lcom/android/settings/DreamSettings;

    # getter for: Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;
    invoke-static {v0}, Lcom/android/settings/DreamSettings;->access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/DreamSettings$4;->this$0:Lcom/android/settings/DreamSettings;

    # getter for: Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;
    invoke-static {v0}, Lcom/android/settings/DreamSettings;->access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->isActivatedOnSleep()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/DreamBackend;->setActivatedOnSleep(Z)V

    .line 251
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 254
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
