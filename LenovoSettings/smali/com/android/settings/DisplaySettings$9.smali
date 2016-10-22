.class Lcom/flyme/deviceoriginalsettings/DisplaySettings$9;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$9;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$9;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$9;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$9;->val$value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 1071
    return-void
.end method
