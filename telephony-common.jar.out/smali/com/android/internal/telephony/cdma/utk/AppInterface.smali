.class public interface abstract Lcom/android/internal/telephony/cdma/utk/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final UTK_CMD_ACTION:Ljava/lang/String; = "android.intent.action.utk.command"

.field public static final UTK_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.utk.session_end"

.field public static final UTK_SETUP_EVENT_LIST_ACTION:Ljava/lang/String; = "android.intent.action.utk.setup_event_list"


# virtual methods
.method public abstract isRadioOn()Z
.end method

.method public abstract onCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
.end method
