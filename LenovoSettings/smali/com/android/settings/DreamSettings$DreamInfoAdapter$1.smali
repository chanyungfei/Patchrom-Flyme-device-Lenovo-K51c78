.class Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter$1;->this$1:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter$1;->val$row:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter$1;->val$row:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 370
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter$1;->this$1:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c06dc

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter$1;->this$1:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    iget-object v2, v2, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c06d3

    const-class v4, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter$1;->this$1:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    iget-object v6, v6, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    return v0
.end method
