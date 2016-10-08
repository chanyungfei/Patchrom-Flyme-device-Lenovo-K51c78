.class final Lcom/android/server/am/TaskRecord;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_FIRSTACTIVETIME:Ljava/lang/String; = "first_active_time"

.field private static final ATTR_LASTACTIVETIME:Ljava/lang/String; = "last_active_time"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"

.field static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field static final IGNORE_RETURN_TO_RECENTS:Z = true

.field static final INVALID_TASK_ID:I = -0x1

.field static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TASK_THUMBNAIL_SUFFIX:Ljava/lang/String; = "_task_thumbnail"


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field creatorUid:I

.field effectiveUid:I

.field firstActiveTime:J

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private final mFilename:Ljava/lang/String;

.field mFloatingBackIsHome:Z

.field private mLastThumbnail:Landroid/graphics/Bitmap;

.field private final mLastThumbnailFile:Ljava/io/File;

.field mLastTimeMoved:J

.field mMovingToBackLenovo:Z

.field mMovingToFront:Z

.field mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field mReuseTask:Z

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTaskToReturnTo:I

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stack:Lcom/android/server/am/ActivityStack;

.field stringName:Ljava/lang/String;

.field final taskId:I

.field taskType:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_taskType"    # I
    .param p13, "_userId"    # I
    .param p14, "_effectiveUid"    # I
    .param p15, "_lastDescription"    # Ljava/lang/String;
    .param p17, "_firstActiveTime"    # J
    .param p19, "_lastActiveTime"    # J
    .param p21, "lastTimeMoved"    # J
    .param p23, "neverRelinquishIdentity"    # Z
    .param p24, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p25, "taskAffiliation"    # I
    .param p26, "prevTaskId"    # I
    .param p27, "nextTaskId"    # I
    .param p28, "taskAffiliationColor"    # I
    .param p29, "callingUid"    # I
    .param p30, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZIII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JJJZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    .local p16, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 137
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 148
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 151
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 155
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 165
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 167
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 176
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mMovingToFront:Z

    .line 179
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mMovingToBackLenovo:Z

    .line 1199
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFloatingBackIsHome:Z

    .line 245
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_task_thumbnail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 248
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 249
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 250
    iput-object p3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 251
    iput-object p4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 252
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 253
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 254
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 255
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 256
    iput-object p7, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 257
    iput-object p8, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 258
    iput-boolean p9, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 259
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 260
    iput-boolean p10, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 261
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    .line 262
    move/from16 v0, p12

    iput v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 263
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 264
    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 265
    move/from16 v0, p14

    iput v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 266
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    .line 267
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 268
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 269
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 270
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 271
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 272
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 273
    move/from16 v0, p25

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 274
    move/from16 v0, p28

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 275
    move/from16 v0, p26

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 276
    move/from16 v0, p27

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 277
    move/from16 v0, p29

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 278
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 279
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 137
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 148
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 151
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 155
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 165
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 167
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 176
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mMovingToFront:Z

    .line 179
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mMovingToBackLenovo:Z

    .line 1199
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mFloatingBackIsHome:Z

    .line 208
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 212
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 213
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 214
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 215
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 216
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 218
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 220
    iput v3, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 221
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 222
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 223
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 225
    iget v0, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 228
    iput v3, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 229
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 230
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 231
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 232
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 233
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 234
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 137
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 148
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 151
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 155
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 165
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 167
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 176
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mMovingToFront:Z

    .line 179
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mMovingToBackLenovo:Z

    .line 1199
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFloatingBackIsHome:Z

    .line 193
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 197
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 198
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 199
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 200
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 201
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 203
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 204
    return-void
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .locals 1
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 918
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;I)Lcom/android/server/am/TaskRecord;
    .locals 49
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "inTaskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 922
    const/4 v8, 0x0

    .line 923
    .local v8, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 924
    .local v9, "affinityIntent":Landroid/content/Intent;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v21, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v12, 0x0

    .line 926
    .local v12, "realActivity":Landroid/content/ComponentName;
    const/4 v13, 0x0

    .line 927
    .local v13, "origActivity":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 928
    .local v10, "affinity":Ljava/lang/String;
    const/4 v11, 0x0

    .line 929
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v43, 0x0

    .line 930
    .local v43, "hasRootAffinity":Z
    const/4 v14, 0x0

    .line 931
    .local v14, "rootHasReset":Z
    const/4 v15, 0x0

    .line 932
    .local v15, "autoRemoveRecents":Z
    const/16 v16, 0x0

    .line 933
    .local v16, "askedCompatMode":Z
    const/16 v17, 0x0

    .line 934
    .local v17, "taskType":I
    const/16 v18, 0x0

    .line 935
    .local v18, "userId":I
    const/16 v19, -0x1

    .line 936
    .local v19, "effectiveUid":I
    const/16 v20, 0x0

    .line 937
    .local v20, "lastDescription":Ljava/lang/String;
    const-wide/16 v22, -0x1

    .line 938
    .local v22, "firstActiveTime":J
    const-wide/16 v24, -0x1

    .line 939
    .local v24, "lastActiveTime":J
    const-wide/16 v26, 0x0

    .line 940
    .local v26, "lastTimeOnTop":J
    const/16 v28, 0x1

    .line 941
    .local v28, "neverRelinquishIdentity":Z
    move/from16 v7, p2

    .line 942
    .local v7, "taskId":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v45

    .line 943
    .local v45, "outerDepth":I
    new-instance v29, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v29 .. v29}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 944
    .local v29, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/16 v30, -0x1

    .line 945
    .local v30, "taskAffiliation":I
    const/16 v33, 0x0

    .line 946
    .local v33, "taskAffiliationColor":I
    const/16 v31, -0x1

    .line 947
    .local v31, "prevTaskId":I
    const/16 v32, -0x1

    .line 948
    .local v32, "nextTaskId":I
    const/16 v34, -0x1

    .line 949
    .local v34, "callingUid":I
    const-string v35, ""

    .line 951
    .local v35, "callingPackage":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    add-int/lit8 v39, v6, -0x1

    .local v39, "attrNdx":I
    :goto_0
    if-ltz v39, :cond_18

    .line 952
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v38

    .line 953
    .local v38, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v40

    .line 956
    .local v40, "attrValue":Ljava/lang/String;
    const-string v6, "task_id"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 957
    const/4 v6, -0x1

    if-ne v7, v6, :cond_0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 951
    :cond_0
    :goto_1
    add-int/lit8 v39, v39, -0x1

    goto :goto_0

    .line 958
    :cond_1
    const-string v6, "real_activity"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 959
    invoke-static/range {v40 .. v40}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_1

    .line 960
    :cond_2
    const-string v6, "orig_activity"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 961
    invoke-static/range {v40 .. v40}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    goto :goto_1

    .line 962
    :cond_3
    const-string v6, "affinity"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 963
    move-object/from16 v10, v40

    goto :goto_1

    .line 964
    :cond_4
    const-string v6, "root_affinity"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 965
    move-object/from16 v11, v40

    .line 966
    const/16 v43, 0x1

    goto :goto_1

    .line 967
    :cond_5
    const-string v6, "root_has_reset"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 968
    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    goto :goto_1

    .line 969
    :cond_6
    const-string v6, "auto_remove_recents"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 970
    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    goto :goto_1

    .line 971
    :cond_7
    const-string v6, "asked_compat_mode"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 972
    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    goto :goto_1

    .line 973
    :cond_8
    const-string v6, "user_id"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 974
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v18

    goto/16 :goto_1

    .line 975
    :cond_9
    const-string v6, "effective_uid"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 976
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v19

    goto/16 :goto_1

    .line 977
    :cond_a
    const-string v6, "task_type"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 978
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto/16 :goto_1

    .line 979
    :cond_b
    const-string v6, "first_active_time"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 980
    invoke-static/range {v40 .. v40}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto/16 :goto_1

    .line 981
    :cond_c
    const-string v6, "last_active_time"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 982
    invoke-static/range {v40 .. v40}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    goto/16 :goto_1

    .line 983
    :cond_d
    const-string v6, "last_description"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 984
    move-object/from16 v20, v40

    goto/16 :goto_1

    .line 985
    :cond_e
    const-string v6, "last_time_moved"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 986
    invoke-static/range {v40 .. v40}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_1

    .line 987
    :cond_f
    const-string v6, "never_relinquish_identity"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 988
    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    goto/16 :goto_1

    .line 989
    :cond_10
    const-string v6, "task_description_"

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 990
    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 991
    :cond_11
    const-string v6, "task_affiliation"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 992
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v30

    goto/16 :goto_1

    .line 993
    :cond_12
    const-string v6, "prev_affiliation"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 994
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v31

    goto/16 :goto_1

    .line 995
    :cond_13
    const-string v6, "next_affiliation"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 996
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v32

    goto/16 :goto_1

    .line 997
    :cond_14
    const-string v6, "task_affiliation_color"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 998
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v33

    goto/16 :goto_1

    .line 999
    :cond_15
    const-string v6, "calling_uid"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1000
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v34

    goto/16 :goto_1

    .line 1001
    :cond_16
    const-string v6, "calling_package"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1002
    move-object/from16 v35, v40

    goto/16 :goto_1

    .line 1004
    :cond_17
    const-string v6, "ActivityManager"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "TaskRecord: Unknown attribute="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1009
    .end local v38    # "attrName":Ljava/lang/String;
    .end local v40    # "attrValue":Ljava/lang/String;
    :cond_18
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v42

    .local v42, "event":I
    const/4 v6, 0x1

    move/from16 v0, v42

    if-eq v0, v6, :cond_1d

    const/4 v6, 0x3

    move/from16 v0, v42

    if-ne v0, v6, :cond_19

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v0, v45

    if-ge v6, v0, :cond_1d

    .line 1011
    :cond_19
    const/4 v6, 0x2

    move/from16 v0, v42

    if-ne v0, v6, :cond_18

    .line 1012
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v44

    .line 1015
    .local v44, "name":Ljava/lang/String;
    const-string v6, "affinity_intent"

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1016
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_2

    .line 1017
    :cond_1a
    const-string v6, "intent"

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1018
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    goto :goto_2

    .line 1019
    :cond_1b
    const-string v6, "activity"

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1020
    invoke-static/range {p0 .. p1}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1023
    .local v4, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_18

    .line 1024
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1027
    .end local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    const-string v6, "ActivityManager"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "restoreTask: Unexpected name="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 1033
    .end local v44    # "name":Ljava/lang/String;
    :cond_1d
    if-nez v43, :cond_21

    .line 1034
    move-object v11, v10

    .line 1039
    :cond_1e
    :goto_3
    if-gtz v19, :cond_20

    .line 1040
    if-eqz v8, :cond_22

    move-object/from16 v41, v8

    .line 1041
    .local v41, "checkIntent":Landroid/content/Intent;
    :goto_4
    const/16 v19, 0x0

    .line 1042
    if-eqz v41, :cond_1f

    .line 1043
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v46

    .line 1045
    .local v46, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-virtual/range {v41 .. v41}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v47, 0x2200

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v18

    invoke-interface {v0, v6, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v37

    .line 1049
    .local v37, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v37, :cond_1f

    .line 1050
    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    .end local v37    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v46    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1f
    :goto_5
    const-string v6, "ActivityManager"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Updating task #"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " for "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ": effectiveUid="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    .end local v41    # "checkIntent":Landroid/content/Intent;
    :cond_20
    new-instance v5, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {v5 .. v35}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;)V

    .line 1066
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v36, v6, -0x1

    .local v36, "activityNdx":I
    :goto_6
    if-ltz v36, :cond_23

    .line 1067
    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1066
    add-int/lit8 v36, v36, -0x1

    goto :goto_6

    .line 1035
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v36    # "activityNdx":I
    :cond_21
    const-string v6, "@"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1036
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_22
    move-object/from16 v41, v9

    .line 1040
    goto/16 :goto_4

    .line 1070
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v36    # "activityNdx":I
    :cond_23
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->DEBUG_RECENTS:Z

    if-eqz v6, :cond_24

    const-string v6, "ActivityManager"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Restored task="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_24
    return-object v5

    .line 1052
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v36    # "activityNdx":I
    .restart local v41    # "checkIntent":Landroid/content/Intent;
    .restart local v46    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v6

    goto/16 :goto_5
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 10
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 301
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_7

    .line 302
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_6

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 308
    :cond_0
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 309
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_1

    .line 313
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 315
    :cond_1
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 316
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 318
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 319
    if-eqz p1, :cond_3

    .line 323
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 324
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 325
    .end local p1    # "_intent":Landroid/content/Intent;
    .local v0, "_intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 326
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 329
    .end local v0    # "_intent":Landroid/content/Intent;
    .restart local p1    # "_intent":Landroid/content/Intent;
    :cond_3
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v4, :cond_4

    const-string v4, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting Intent of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_4
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 332
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 333
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 354
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_c

    move v1, v6

    .line 355
    .local v1, "intentFlags":I
    :goto_3
    const/high16 v4, 0x200000

    and-int/2addr v4, v1

    if-eqz v4, :cond_5

    .line 358
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 361
    :cond_5
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 362
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_d

    .line 364
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 378
    .end local v1    # "intentFlags":I
    :goto_4
    return-void

    :cond_6
    move v4, v6

    .line 302
    goto/16 :goto_0

    .line 304
    :cond_7
    iget-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v4, :cond_0

    goto :goto_4

    :cond_8
    move-object v4, v7

    .line 332
    goto :goto_1

    .line 335
    :cond_9
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v2, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_b

    .line 338
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 339
    .local v3, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 340
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 341
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 342
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    if-eqz v4, :cond_a

    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting Intent of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to target "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_a
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 345
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 346
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_2

    .line 348
    .end local v3    # "targetIntent":Landroid/content/Intent;
    :cond_b
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 349
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 350
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 354
    .end local v2    # "targetComponent":Landroid/content/ComponentName;
    :cond_c
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    goto/16 :goto_3

    .line 365
    .restart local v1    # "intentFlags":I
    :cond_d
    const v4, 0x82000

    and-int/2addr v4, v1

    const/high16 v7, 0x80000

    if-ne v4, v7, :cond_f

    .line 370
    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v4, :cond_e

    .line 371
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_4

    .line 373
    :cond_e
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_4

    .line 376
    :cond_f
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto/16 :goto_4
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 572
    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 582
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    iget v0, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 587
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 588
    iget v0, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 589
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 591
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 597
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 598
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 599
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 602
    :cond_1
    return-void

    .line 595
    :cond_2
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    iput v0, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_0
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 576
    return-void
.end method

.method autoRemoveFromRecents()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method closeRecentsChain()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 411
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 417
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 418
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 419
    return-void
.end method

.method disposeThumbnail()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 493
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 494
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 495
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x80

    const/16 v7, 0x7d

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1075
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1076
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1077
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1078
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1080
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1082
    :cond_1
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_4

    .line 1088
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1095
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "intent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1097
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1102
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "affinityIntent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1104
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 1108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_8

    .line 1112
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1115
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_a

    .line 1117
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1118
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1119
    const-string v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1120
    const-string v0, " taskType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1121
    const-string v0, " mTaskToReturnTo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1123
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-eqz v0, :cond_c

    .line 1124
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1125
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1126
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1128
    :cond_c
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, v2, :cond_d

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-ne v0, v6, :cond_d

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v0, v6, :cond_d

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_e

    .line 1131
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1132
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1133
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_13

    .line 1135
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1139
    :goto_1
    const-string v0, ") nextAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1140
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_14

    .line 1142
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    :goto_2
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1148
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1149
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v0, :cond_10

    .line 1150
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1151
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1152
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1154
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1155
    const-string v0, " lastThumbnailFile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1156
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 1157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1159
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1160
    const-string v0, " firstActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1161
    const-string v0, " lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1162
    const-string v0, " (inactive for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "s)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    return-void

    .line 1084
    :cond_12
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    .line 1137
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1144
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 758
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 759
    .local v2, "realActivity":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 760
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 761
    .local v1, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1

    .line 759
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 764
    :cond_1
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 768
    .end local v1    # "candidate":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method findEffectiveRootIndex()I
    .locals 5

    .prologue
    .line 824
    const/4 v1, 0x0

    .line 825
    .local v1, "effectiveNdx":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 826
    .local v3, "topActivityNdx":I
    const/4 v0, 0x0

    .local v0, "activityNdx":I
    :goto_0
    if-gt v0, v3, :cond_2

    .line 827
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 828
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 826
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 831
    :cond_1
    move v1, v0

    .line 832
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_0

    .line 836
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v1
.end method

.method freeLastThumbnail()V
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 490
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method getInactiveDuration()J
    .locals 4

    .prologue
    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V
    .locals 2
    .param p1, "thumbs"    # Landroid/app/ActivityManager$TaskThumbnail;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    iput-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 474
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 475
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 479
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_1
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .prologue
    .line 504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 506
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public getTaskThumbnailLocked()Landroid/app/ActivityManager$TaskThumbnail;
    .locals 4

    .prologue
    .line 720
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_0

    .line 721
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 724
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, p0, :cond_0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenSnapshotted:Z

    if-nez v3, :cond_0

    .line 725
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 726
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    .line 727
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenSnapshotted:Z

    .line 731
    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskThumbnail;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>()V

    .line 732
    .local v1, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V

    .line 733
    return-object v1
.end method

.method getTaskToReturnTo()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .prologue
    .line 515
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 516
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 517
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1

    .line 515
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 522
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method isApplicationTask()Z
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHomeTask()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 742
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOverHomeStack()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 750
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 560
    sget-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing and adding activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to stack at top"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 564
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 567
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 568
    return-void
.end method

.method final performClearTaskAtIndexLocked(I)V
    .locals 7
    .param p1, "activityNdx"    # I

    .prologue
    const/4 v2, 0x0

    .line 632
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 633
    .local v6, "numActivities":I
    :goto_0
    if-ge p1, v6, :cond_3

    .line 634
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 635
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 633
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_2

    .line 640
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 641
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 642
    add-int/lit8 p1, p1, -0x1

    .line 643
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    const-string v4, "clear"

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    add-int/lit8 p1, p1, -0x1

    .line 647
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 650
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 12
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 674
    .local v9, "numActivities":I
    add-int/lit8 v8, v9, -0x1

    .local v8, "activityNdx":I
    :goto_0
    if-ltz v8, :cond_7

    .line 675
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 676
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 674
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 680
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v0, v2, :cond_0

    .line 682
    move-object v11, v1

    .line 684
    .local v11, "ret":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v8, v8, 0x1

    :goto_1
    if-ge v8, v9, :cond_5

    .line 685
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 686
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 684
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 689
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v10

    .line 690
    .local v10, "opts":Landroid/app/ActivityOptions;
    if-eqz v10, :cond_4

    .line 691
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 693
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "clear"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    add-int/lit8 v8, v8, -0x1

    .line 696
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 703
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_6

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-nez v0, :cond_6

    .line 705
    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_6

    .line 706
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "clear"

    const/4 v7, 0x0

    move-object v3, v11

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 708
    const/4 v11, 0x0

    .line 716
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "ret":Lcom/android/server/am/ActivityRecord;
    :cond_6
    :goto_3
    return-object v11

    :cond_7
    const/4 v11, 0x0

    goto :goto_3
.end method

.method final performClearTaskLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 657
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    .line 658
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 659
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 606
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v1, :cond_0

    .line 608
    iget v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 610
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 614
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 617
    :cond_2
    :goto_0
    return v0

    .line 616
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    goto :goto_0
.end method

.method public removeTaskActivitiesLocked()V
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    .line 739
    return-void
.end method

.method removedFromRecents()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    .line 423
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 424
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_0

    .line 425
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 426
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 428
    :cond_0
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 846
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_RECENTS:Z

    if-eqz v4, :cond_0

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saving task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    const-string v4, "task_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 849
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 850
    const-string v4, "real_activity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    .line 853
    const-string v4, "orig_activity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 859
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 860
    const-string v4, "affinity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 861
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 862
    const-string v5, "root_affinity"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 867
    :cond_3
    :goto_1
    const-string v4, "root_has_reset"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 868
    const-string v4, "auto_remove_recents"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 869
    const-string v4, "asked_compat_mode"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 870
    const-string v4, "user_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 871
    const-string v4, "effective_uid"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 872
    const-string v4, "task_type"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 873
    const-string v4, "first_active_time"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 874
    const-string v4, "last_active_time"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    const-string v4, "last_time_moved"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 876
    const-string v4, "never_relinquish_identity"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 877
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 878
    const-string v4, "last_description"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 880
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v4, :cond_5

    .line 881
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 883
    :cond_5
    const-string v4, "task_affiliation_color"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 884
    const-string v4, "task_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 885
    const-string v4, "prev_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 886
    const-string v4, "next_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 887
    const-string v4, "calling_uid"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    const-string v5, "calling_package"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v4, :cond_b

    const-string v4, ""

    :goto_2
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 890
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 891
    const-string v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 892
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 893
    const-string v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 896
    :cond_6
    const-string v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 897
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 898
    const-string v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 900
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 901
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 902
    .local v2, "numActivities":I
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 903
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 904
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_c

    if-lez v1, :cond_c

    .line 914
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    return-void

    .line 862
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "numActivities":I
    :cond_8
    const-string v4, "@"

    goto/16 :goto_0

    .line 864
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 865
    const-string v5, "root_affinity"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :goto_4
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    :cond_a
    const-string v4, "@"

    goto :goto_4

    .line 888
    :cond_b
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    goto :goto_2

    .line 910
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "numActivities":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_c
    const-string v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 911
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 912
    const-string v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 902
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method final setFrontOfTask()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 537
    const/4 v1, 0x0

    .line 538
    .local v1, "foundFront":Z
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 539
    .local v2, "numActivities":I
    const/4 v0, 0x0

    .local v0, "activityNdx":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 540
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 541
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 542
    :cond_0
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 539
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_1
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 546
    const/4 v1, 0x1

    goto :goto_1

    .line 549
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-nez v1, :cond_3

    if-lez v2, :cond_3

    .line 552
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iput-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 554
    :cond_3
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 294
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 295
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 296
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 297
    return-void
.end method

.method setLastThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_2

    .line 459
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 460
    if-nez p1, :cond_1

    .line 461
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 467
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 469
    :goto_1
    return v0

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setMovingToBack(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 181
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASK_RETURNTO:Z

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMovingToBack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/TaskRecord;->mMovingToBackLenovo:Z

    .line 187
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "nextAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 406
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 407
    return-void

    .line 406
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0
.end method

.method setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "prevAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 401
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 402
    return-void

    .line 401
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v4, 0x0

    .line 431
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 432
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 433
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 435
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1

    .line 436
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 437
    .local v0, "nextRecents":Lcom/android/server/am/TaskRecord;
    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v1, v2, :cond_2

    .line 438
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v1, p1, :cond_0

    .line 441
    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 443
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 448
    .end local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 450
    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 451
    return-void

    .line 446
    .restart local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_2
    move-object p1, v0

    .line 447
    goto :goto_0
.end method

.method setTaskToReturnTo(I)V
    .locals 3
    .param p1, "taskToReturnTo"    # I

    .prologue
    .line 381
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 382
    const/4 p1, 0x1

    .line 384
    :cond_0
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 387
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASK_RETURNTO:Z

    if-eqz v0, :cond_1

    .line 388
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTaskToReturnTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1169
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1170
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1173
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1175
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1195
    :goto_0
    return-object v1

    .line 1178
    :cond_0
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1182
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1183
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 1195
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1185
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 1186
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1188
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 1189
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1192
    :cond_3
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 526
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 527
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 528
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 526
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 532
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method touchActiveTime()V
    .locals 4

    .prologue
    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 283
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 284
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    .line 286
    :cond_0
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 3

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    .line 841
    .local v0, "effectiveRootIndex":I
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 842
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 843
    return-void
.end method

.method updateTaskDescription()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 776
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 777
    .local v4, "numActivities":I
    if-nez v4, :cond_5

    .line 779
    .local v6, "relinquish":Z
    :cond_0
    :goto_0
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "activityNdx":I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 781
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 782
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_6

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v7, v7, 0x1000

    if-nez v7, :cond_6

    .line 785
    add-int/lit8 v0, v0, 0x1

    .line 793
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v0, :cond_9

    .line 798
    const/4 v3, 0x0

    .line 799
    .local v3, "label":Ljava/lang/String;
    const/4 v2, 0x0

    .line 800
    .local v2, "iconFilename":Ljava/lang/String;
    const/4 v1, 0x0

    .line 801
    .local v1, "colorPrimary":I
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_8

    .line 802
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 803
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v7, :cond_4

    .line 804
    if-nez v3, :cond_2

    .line 805
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 807
    :cond_2
    if-nez v2, :cond_3

    .line 808
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    .line 810
    :cond_3
    if-nez v1, :cond_4

    .line 811
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    .line 801
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 777
    .end local v0    # "activityNdx":I
    .end local v1    # "colorPrimary":I
    .end local v2    # "iconFilename":Ljava/lang/String;
    .end local v3    # "label":Ljava/lang/String;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "relinquish":Z
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_0

    move v6, v8

    goto :goto_0

    .line 788
    .restart local v0    # "activityNdx":I
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "relinquish":Z
    :cond_6
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_7

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-nez v7, :cond_1

    .line 780
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 815
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "colorPrimary":I
    .restart local v2    # "iconFilename":Ljava/lang/String;
    .restart local v3    # "label":Ljava/lang/String;
    :cond_8
    new-instance v7, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v7, v3, v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 817
    iget v7, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v8, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v7, v8, :cond_9

    .line 818
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v7

    iput v7, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 821
    .end local v1    # "colorPrimary":I
    .end local v2    # "iconFilename":Ljava/lang/String;
    .end local v3    # "label":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method public getHomeThumbnail()Landroid/app/ActivityManager$TaskThumbnail;
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, p0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskThumbnail;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>()V

    .local v1, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V

    return-object v1
.end method
