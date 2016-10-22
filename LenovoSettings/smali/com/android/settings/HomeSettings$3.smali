.class Lcom/flyme/deviceoriginalsettings/HomeSettings$3;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/HomeSettings;->buildHomeActivitiesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/HomeSettings;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/HomeSettings;->mCurrentHome:Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 204
    return-void
.end method
