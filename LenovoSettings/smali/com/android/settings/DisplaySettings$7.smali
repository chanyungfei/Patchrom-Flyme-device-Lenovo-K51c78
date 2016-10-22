.class Lcom/flyme/deviceoriginalsettings/DisplaySettings$7;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/WarnedListPreference;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->access$700(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)Lcom/flyme/deviceoriginalsettings/WarnedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/WarnedListPreference;->click()V

    .line 844
    return-void
.end method
