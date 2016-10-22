.class Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings$DreamInfoAdapter;->createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;->this$1:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    iput-object p2, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;->val$row:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 410
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 411
    iget-object v1, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;->this$1:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;->val$row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DreamBackend$DreamInfo;

    # invokes: Lcom/android/settings/DreamSettings$DreamInfoAdapter;->activate(Lcom/android/settings/DreamBackend$DreamInfo;)V
    invoke-static {v1, v0}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->access$300(Lcom/android/settings/DreamSettings$DreamInfoAdapter;Lcom/android/settings/DreamBackend$DreamInfo;)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;->this$1:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    iget-object v0, v0, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c06dc

    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;->this$1:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    iget-object v2, v2, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c06d3

    const-class v4, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/DreamSettings$DreamInfoAdapter$3;->this$1:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    iget-object v6, v6, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v6}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/settings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method
