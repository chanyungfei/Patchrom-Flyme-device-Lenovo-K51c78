.class Lcom/flyme/deviceoriginalsettings/DreamSettings$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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
    .line 167
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->showDialog(I)V

    .line 172
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c06e8

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c06df

    const-class v4, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method
